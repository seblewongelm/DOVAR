USE [master]
GO
/****** Object:  Database [dovar]    Script Date: 4/9/2019 7:26:53 AM ******/
CREATE DATABASE [dovar]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'dovar', FILENAME = N'G:\Source\dovar3\dovar.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'dovar_log', FILENAME = N'G:\Source\dovar3\dovar_log.ldf' , SIZE = 3136KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [dovar] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [dovar].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [dovar] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [dovar] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [dovar] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [dovar] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [dovar] SET ARITHABORT OFF 
GO
ALTER DATABASE [dovar] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [dovar] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [dovar] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [dovar] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [dovar] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [dovar] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [dovar] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [dovar] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [dovar] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [dovar] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [dovar] SET  DISABLE_BROKER 
GO
ALTER DATABASE [dovar] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [dovar] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [dovar] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [dovar] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [dovar] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [dovar] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [dovar] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [dovar] SET RECOVERY FULL 
GO
ALTER DATABASE [dovar] SET  MULTI_USER 
GO
ALTER DATABASE [dovar] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [dovar] SET DB_CHAINING OFF 
GO
ALTER DATABASE [dovar] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [dovar] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'dovar', N'ON'
GO
USE [dovar]
GO
/****** Object:  Table [dbo].[AgeGroup]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AgeGroup](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeGroupName] [nvarchar](50) NULL,
 CONSTRAINT [PK_AgeGroup] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DataStatus]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DataStatus](
	[Id] [int] NOT NULL,
	[StatusName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DataStatus] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DetailOutbreak]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetailOutbreak](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AgeGroupId] [int] NULL,
	[MonthlySummaryId] [int] NULL,
	[DiagnosisId] [int] NULL,
	[StatusId] [int] NULL,
	[SeroType] [nvarchar](50) NULL,
	[OutbreakRefNo] [int] NULL,
	[Longitude] [float] NULL,
	[Latitude] [float] NULL,
	[DateReported] [datetime] NULL,
	[DateFirstCase] [datetime] NULL,
	[Spp] [nvarchar](50) NULL,
	[Cases] [int] NULL,
	[Deaths] [int] NULL,
	[Slaughtered] [int] NULL,
	[TotalCases] [int] NULL,
	[TotalDeaths] [int] NULL,
	[TotalSlaughtered] [int] NULL,
	[InfectedUnits] [int] NULL,
	[TypeOfUnit] [nvarchar](50) NULL,
 CONSTRAINT [PK_DetailOutbreak] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Diagnosis]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Diagnosis](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DiagnosisName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Diagnosis] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Disease]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Disease](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Abbrevaton] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Disease] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GMonth]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GMonth](
	[Id] [int] NOT NULL,
	[MonthName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_GMonth] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Location]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NULL,
	[LocationName] [nvarchar](100) NOT NULL,
	[LocationNameAmh] [nvarchar](100) NULL,
	[LocationTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LocationType]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LocationType](
	[Id] [int] NOT NULL,
	[LocationTypeName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LocationType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonthlyReport]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlyReport](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ReportMonth] [int] NOT NULL,
	[ReportYear] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Region] [int] NOT NULL,
	[Zone] [int] NOT NULL,
	[Woreda] [int] NOT NULL,
	[Ccomment] [text] NULL,
	[CreatedBy] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[LastModifiedBy] [int] NULL,
	[LastModifiedDate] [datetime] NULL,
	[ApprovedBy] [int] NULL,
	[ApprovedDate] [datetime] NULL,
	[VerifiedBy] [int] NULL,
	[VerifiedDate] [datetime] NULL,
	[IsReportAccepted] [int] NOT NULL,
	[ReportSenderName] [nvarchar](100) NOT NULL,
	[ReportSenderPhone] [nvarchar](30) NULL,
	[ReportSenderQualificationId] [int] NULL,
	[PublicBodyId] [int] NULL,
 CONSTRAINT [PK_MonthlyReport] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MonthlySummary]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonthlySummary](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MonthlyReportId] [int] NOT NULL,
	[DiseaseId] [int] NULL,
	[SpeciesId] [int] NULL,
	[NewOutbreak] [int] NULL,
	[ActiveOutbreak] [int] NULL,
	[NewCases] [int] NULL,
	[Death] [int] NULL,
	[Slaughtered] [int] NULL,
	[AnimalAtRisk] [int] NULL,
	[Control] [int] NULL,
	[Prophylaxis] [int] NULL,
 CONSTRAINT [PK_MonthlySummary] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Operation]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Operation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Publicbody]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicbody](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LocationId] [int] NOT NULL,
	[PublicbodyName] [nvarchar](100) NOT NULL,
	[PublicbodyTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Publicbody] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PublicBodyType]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PublicBodyType](
	[Id] [int] NOT NULL,
	[PublicBodyTypeName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_PublicBodyType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Qualification]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Qualification](
	[Id] [int] NOT NULL,
	[QualificationName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Qualification] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReportYesNo]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReportYesNo](
	[Id] [int] NOT NULL,
	[YesNo] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_ReportYesNo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RoleOperation]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleOperation](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[OperationId] [int] NOT NULL,
 CONSTRAINT [PK_RoleOperation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Species]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Species](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Abbrevations] [nvarchar](10) NULL,
 CONSTRAINT [PK_Species] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](100) NOT NULL,
	[Salt] [nvarchar](100) NOT NULL,
	[PublicbodyId] [int] NOT NULL,
	[IsActive] [bit] NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 4/9/2019 7:26:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[RoleId] [int] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[AgeGroup] ON 

INSERT [dbo].[AgeGroup] ([Id], [AgeGroupName]) VALUES (1, N'0-9month')
INSERT [dbo].[AgeGroup] ([Id], [AgeGroupName]) VALUES (2, N'1-2 years')
INSERT [dbo].[AgeGroup] ([Id], [AgeGroupName]) VALUES (3, N'3-5 years')
SET IDENTITY_INSERT [dbo].[AgeGroup] OFF
INSERT [dbo].[DataStatus] ([Id], [StatusName]) VALUES (1, N'Draft')
INSERT [dbo].[DataStatus] ([Id], [StatusName]) VALUES (2, N'Approved')
INSERT [dbo].[DataStatus] ([Id], [StatusName]) VALUES (3, N'Verified')
SET IDENTITY_INSERT [dbo].[DetailOutbreak] ON 

INSERT [dbo].[DetailOutbreak] ([Id], [AgeGroupId], [MonthlySummaryId], [DiagnosisId], [StatusId], [SeroType], [OutbreakRefNo], [Longitude], [Latitude], [DateReported], [DateFirstCase], [Spp], [Cases], [Deaths], [Slaughtered], [TotalCases], [TotalDeaths], [TotalSlaughtered], [InfectedUnits], [TypeOfUnit]) VALUES (4, 1, 2, 1, 1, N'1', 1, 1, 1, CAST(0x0000A85B00000000 AS DateTime), CAST(0x0000A85B00000000 AS DateTime), N'1', 1, 1, 1, 1, 1, 1, 1, N'1')
SET IDENTITY_INSERT [dbo].[DetailOutbreak] OFF
SET IDENTITY_INSERT [dbo].[Diagnosis] ON 

INSERT [dbo].[Diagnosis] ([Id], [DiagnosisName]) VALUES (1, N'Confirmed by Laboratory')
INSERT [dbo].[Diagnosis] ([Id], [DiagnosisName]) VALUES (2, N'Suspected')
SET IDENTITY_INSERT [dbo].[Diagnosis] OFF
SET IDENTITY_INSERT [dbo].[Disease] ON 

INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (1, N'AFRICAN HORSE SICKNESS ', N'AHS')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (2, N'ANAPLASMOSIS', N'ANA')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (3, N'ANTHRAX', N'ANT')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (4, N'BABESIOSIS', N'BAB')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (5, N'BLACKQUARTER', N'BQ')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (6, N'BRUCELLOSIS', N'BRUC')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (7, N'TUBERCULOSIS', N'BTB')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (8, N'CBPP', N'CBPP')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (9, N'CONTAGIOUS CAPRINE PLEURO-PNEUMONIA ', N'CCPP')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (10, N'CONTAGEOUS ECHTYMA', N'CE')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (11, N'ERLICHIOSIS (COWDRIOSIS)', N'COWD')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (12, N'CAMEL POX', N'CPOX')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (13, N'DOURINE', N'DOUR')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (14, N'ECHINOCOCCOSIS', N'ECHI')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (15, N'EQUINE HOURAS VIRUES', N'EHV')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (16, N'FOWL CHOLERA', N'FCHO')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (17, N'FMD', N'FMD')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (18, N'FOWL TYPHOID', N'FTYP')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (19, N'GUMBORO', N'GUM')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (20, N'HIGHLY PATHOGENIC AVIAN INFLUENZA ', N'HPAI')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (21, N'HAEMO-SEPTICEMIA  ', N'HS')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (22, N'LUMPY SKIN DISEASE', N'LSD')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (23, N'LYMPHANGITIS (NOT IN OIE)', N'LYMP')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (24, N'MAEDI VISNA', N'MAED')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (25, N'MALIGNANT CAT. FEV ', N'MCF')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (26, N'NEWCASTLE DISEASE', N'NCD')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (27, N'PEST DES PETITS RUMINANTS', N'PPR')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (28, N'RABIES', N'RAB')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (29, N'RIFT VALLEY FEVER', N'RVF')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (30, N'SHEEP AND GOAT POX', N'SGPX')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (31, N'PULLORUM DISEASE', N'SPUL')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (32, N'STREPTOTHRICOSIS', N'STRE')
INSERT [dbo].[Disease] ([Id], [Name], [Abbrevaton]) VALUES (33, N'TRYPANOSOMOSIS  ', N'TRYP')
SET IDENTITY_INSERT [dbo].[Disease] OFF
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (1, N'January')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (2, N'February')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (3, N'March')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (4, N'April')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (5, N'May')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (6, N'June')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (7, N'July')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (8, N'August')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (9, N'September')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (10, N'October')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (11, N'November')
INSERT [dbo].[GMonth] ([Id], [MonthName]) VALUES (12, N'December')
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (0, NULL, N'Ethiopia', N'ኢትዮጵያ', 0)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2, 0, N'Afar	', N'አፋር', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3, 0, N'Amhara', N'አማራ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4, 0, N'Benshangul Gumuz', N'ቤ/ ጉምዝ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5, 0, N'Tigray', N'ትግራይ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (6, 0, N'Dire Dawa', N'ድሬደዋ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (7, 0, N'Gambella', N'ጋምቤላ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (8, 0, N'Harar', N'ሃረሪ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (9, 0, N'Oromiiya', N'ኦሮሚያ ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (10, 0, N'SNNPR', N'ደቡበ ክልል', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (11, 0, N'Somali', N'ሶማሌ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (12, 2, N'Zone 1', N'ዞን1', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (13, 2, N'Zone 2', N'ዞን 2', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (14, 2, N'Zone 3', N'ዞን 3', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (15, 2, N'Zone 4', N'ዞን 4', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (16, 2, N'Zone 5', N'ዞን 5', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (17, 3, N'East Gojam', N'ምስራቅ ጎጃም', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (18, 3, N'N. Gonder', N'ሰሜን ጎንዳር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (19, 3, N'N. Wollo', N'ሰሜን ወሎ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (20, 3, N'N. Shewa ', N'ሰሜን ሸዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (21, 3, N'Oromia', N'ኦሮሚያ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (22, 3, N'S. Gonder', N'ዳቡብ  ጎንዳር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (23, 3, N'S. Wollo', N'ዳቡብ ወሎ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (24, 3, N'Waghemera', N'ዋግምራ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (25, 4, N'Asosa', N'አሶሳ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (26, 4, N'Kamashi', N'ከማሺ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (27, 4, N'Mao komo', N'ማኦ ኮሞ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (28, 4, N'Metekel', N'መተከል', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (29, 6, N'Dire Dawa', N'ድሬደዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (30, 7, N'Aghewak', N'አኙዋክ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (31, 7, N'Agnwa', N'አኝዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (32, 7, N'S/W Itang', N'ሰ/ም ኢታንግ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (33, 7, N'Nuer', N'ኑዌር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (34, 7, N'Mezhenger', N'መዠንገር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (35, 8, N'Harar', N'ሀረር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (36, 8, N'Sofi Erer', N'ሶፊ ኤረር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (37, 9, N'Arsi', N'አርሲ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (38, 9, N'Bale', N'ባሌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (39, 9, N'Borena', N'ቦሬና', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (40, 9, N'East Hararghe', N'ምስራቅ ሀረርጌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (41, 9, N'East Shewa', N'ምስራቅ ሸዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (42, 9, N'East  Wellega1', N'ምስራቅ ወለጋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (43, 9, N'East Wolega', N'ምስራቅ ወለጋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (45, 9, N'Guji', N'ጉጂ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (46, 9, N'Jimma', N'ጅማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (47, 9, N'Kelem Wellega', N'ቄለም ወለጋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (48, 9, N'N. Shewa ', N'ሰሜን ሸዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (49, 9, N'W. Arsi', N'ምዕራብ እርሲ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (50, 9, N'West Hararghe', N'ምዕራብ ሀረርጌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (51, 9, N'West shewa Shewa', N'ምዕራብ  ሸዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (52, 5, N'Mekele', N'መቀሌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (53, 5, N'C.Tigray', N'ማዕከላዊ ትግራይ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (54, 8, N'Kombolcha', N'ኮምቦልቻ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (55, 12, N'Adhar', N'አድሃር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (56, 12, N'Chefera', N'ጨራራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (57, 12, N'Elidar', N'ኢልዳር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (58, 12, N'Kori', N'ኮሪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (59, 12, N'Mille', N'ሚሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (60, 13, N'Abhala', N'አብሃላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (61, 13, N'Afdera', N'አፍዴራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (62, 13, N'Bada Admeruk', N'ባዳአድመሩክ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (63, 13, N'Bada Ermole', N'በዳ ኤርሞሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (64, 13, N'Berahle', N'በረሂሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (65, 10, N'Gamogofa', N'ጋሞጎፋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (66, 10, N'Hadiya', N'ሀዲያ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (67, 10, N'Dawro1', N'ዳውሮ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (68, 10, N'Gamo-Gofa', N'ጋሞጎፋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (69, 10, N'Sidama', N'ሲዳማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (70, 10, N'Konso', N'ኮንሶ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (71, 13, N'Konoba', N'ኮኖባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (72, 13, N'Dalol', N'ዳሎል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (73, 10, N'Amaro', N'አማሮ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (74, 10, N'S.Omo', N'ደቡብ ኦሞ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (75, 10, N'Silte', N'ስልጤ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (76, 10, N'Wolayeta', N'ወላይታ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (77, 10, N'Burji', N'ቡርጂ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (78, 10, N'Gurage', N'ጉራጌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (81, 10, N'Gedio', N'ጌዶ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (82, 10, N'Kenbat tenbaro', N'ከንባታ ጠንባሮ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (83, 5, N'E. tigray', N'ምስራቅ ትግራይ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (84, 5, N'West', N'ምዕራብ ትግራይ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (85, 5, N'South tigray', N' ደቡብ ትግራይ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (86, 10, N'Dawro', N'Dawro', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (87, 5, N'SE. Tigray', N'ደ/ ም/ ትግራይ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (88, 5, N'N.West', N'ሰ/ም ትግራይ ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (89, 13, N'Bidu', N'ቢዱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (90, 13, N'Erebti', N'ኤርበብቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (91, 13, N'Megale', N'መጋሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (92, 14, N'Amibara', N'አሚባራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (93, 14, N'Argoba', N'አርጎባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (94, 14, N'Awash Fentale', N'አዋሽ ፈንታሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (95, 14, N'Bure Modayitu', N'ቡሬ ሞዳይቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (96, 14, N'Dulecha', N'ዱለቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (97, 15, N'Awra', N'አውራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (98, 15, N'Ewa', N'ኤዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (99, 15, N'Golina', N'ጎሊአና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (100, 15, N'Yalo', N'ያሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (101, 16, N'Dali Fage', N'ደሊ ፋጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (102, 12, N'Assayata', N'አሳይታ', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (103, 16, N'Adele Ela', N'አዳል ኤላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (104, 17, N'Enbise Sar ', N'እምብሴ ሳር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (105, 17, N'Goncha ', N'ጎንቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (106, 14, N'Bure Budaiytu', N'ቡሬ ቡዳይቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (107, 18, N'Beyeda', N'በየዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (108, 18, N'Debark', N'ደባርቅ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (109, 53, N'Naeder Adet', N'ናእደር አዴት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (111, 24, N'Abergele', N'አበርገሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (112, 19, N'Dawent', N'ዳወንት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (113, 16, N'Semu Robi', N'ሰሙ ሮቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (114, 16, N'Telalak', N'ጠላልክ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (115, 16, N'Hadele Ela', N'ሃዴሌ ኤላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (116, 37, N'Amigna', N'አመያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (117, 37, N'Ankelo Wabii', N'አንኬሎ ዋቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (118, 37, N'Aseko', N'አስኮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (119, 37, N'Bale Gasera', N'ባሌ ጌሴራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (120, 37, N'Balee', N'ባሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (121, 37, N'Limu Bilbilo', N'ሊሙ ቢልቢሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (122, 39, N'Yabelo', N'ያቤሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (123, 41, N'Dugda', N'ዱግዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (124, 41, N'Bosat', N'ቦሰት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (125, 39, N'Moyale', N'ሞያሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (126, 18, N'East Belesa', N'ምስራቅ በለሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (127, 20, N'Kewet', N'ቀዊት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (128, 35, N'Harari', N'ሃረሪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (129, 18, N'Wogera', N'ወገራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (131, 19, N'Delanta', N'ደላንታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (132, 40, N'Gursum', N'ጉርሱም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (133, 49, N'Wondo', N'ወንዶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (134, 39, N'Dire', N'ዲሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (135, 16, N'Dewe', N'ደዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (138, 12, N'Adeare', N'አዴራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (139, 12, N'Afambo', N'አፋምቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (140, 17, N'E/Sar Mider', N'አ/ሳር ሚዲር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (141, 23, N'Werellu', N'ወረ ኢሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (142, 26, N'Sirba Abay', N'ሲርባ አባይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (143, 25, N'Sherkole', N'ሸርኮሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (144, 15, N'Teru ', N'ጠሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (145, 12, N'Dubti', N'ዱብቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (146, 12, N'Gergira', N'ገርጊራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (147, 12, N'Mebasay', N'መባሳይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (148, 12, N'Weama', N'ዌአም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (149, 14, N'Awash Sabure', N'አዋሸ ሳቡር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (150, 14, N'Gewane', N'ገዋኔ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (153, 9, N'(R-4)', N'(R-4)', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (154, 9, N'W/Wollega', N'ምዕራብ  ወለጋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (155, 10, N'Dirashe', N'ደራሼ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (156, 11, N'Liben', N'ሊበን', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (157, 5, N'N/East', N'ሰ/ ም/ትግራይ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (158, 12, N'Bure', N'ቡሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (159, 12, N'Dicheoto', N'ዲቼኦታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (160, 12, N'Manda', N'ማንዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (161, 13, N'Aynedep', N'አይነዲፕ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (162, 13, N'Maowo', N'ማዎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (163, 17, N'Huletjuebnesie', N'ሁልተጂበንሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (164, 18, N'Gonder  Zuria', N'ጎንደር  ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (165, 18, N'Jan Amora', N'ጃናሞራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (166, 18, N'Tselemt', N'ፀለምት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (167, 18, N'West Belesa', N'ምዕራብ በለሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (168, 20, N'Ankober', N'አንኮበር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (169, 20, N'Antsokia Gemza', N'አንጾኪያ ገምዛ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (170, 20, N'Basona Worana', N'ቦሶና ወራና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (171, 20, N'Berehet', N'በረኸት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (172, 20, N'Eferatana Gidem', N'ኤፍራታና ጊዳሜ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (173, 20, N'Gishe Rabel', N'ጊሽ ራበል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (174, 20, N'Keya Gebreal', N'ቀያ ገብርኤል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (175, 20, N'Manz Gera', N'መንዝ ጌራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (176, 20, N'Merha Betie ', N'መርሃ ቤቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (177, 20, N'Mida Oremo', N'ሚዳ ኦሮሞ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (178, 20, N'Minjar Shenkora', N'ምንጃር ሸንኮራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (179, 20, N'Sia Deberna Wayu', N'ሴደብርና ዋዩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (180, 20, N'Tarma Ber', N'ጣርማ በር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (181, 20, N'Weremo Wajetuna Mida', N'ወረሞ ዋጂቱ ሚዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (182, 19, N'Bugna', N'ቡግና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (183, 19, N'Gidan', N'ጊዳን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (184, 19, N'Guba Lafto', N'ጉባ ላፍቶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (185, 19, N'Habru', N'ሃብሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (186, 19, N'Lasta', N'ላስታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (187, 19, N'Meket', N'መቂት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (188, 19, N'Wadla', N'ዋድላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (189, 18, N'Adi-arkay', N'አዲ አርኪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (190, 18, N'Dabate', N'ደባት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (191, 20, N'Menz Mama Mider', N'መንዝ ማማ ምድር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (192, 19, N'Kobo', N'ቆቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (193, 19, N'Minjar Shenkora', N'ምንጃር ሸንኮራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (194, 20, N'Menz Lalo Mider', N'መንዝ ላሎ ምድር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (195, 21, N'Artuma Fursi', N'አርቱማ ፉርሲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (196, 21, N'Bati', N'ባቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (197, 21, N'Dewa Chefa', N'ዳዋ ጨፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (198, 21, N'Dewa harewa', N'ዳዋ ሃረዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (199, 21, N'Gile Timuga', N'ጊሌ ጡሙጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (200, 22, N'East Estie', N'ምስራቅ እሰቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (201, 22, N'Ebenat', N'እብናት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (202, 22, N'Farta', N'ፋርጣ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (203, 22, N'Lay Gayint', N'ላይ ጋይንት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (204, 22, N'Mierab Etie', N'ምዕራብ እስቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (205, 22, N'Simada', N'ስማዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (206, 22, N'Tach Gayint', N'ታች ጋይንት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (207, 23, N'Ambassel', N'አምባሰል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (208, 23, N'Argoba', N'አርጎባ', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (209, 23, N'Debresina', N'ደብረሲና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (210, 23, N'Delanta', N'ደላንታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (211, 23, N'Dessie ', N'ደሴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (212, 23, N'Jama', N'ጀማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (213, 23, N'Kalu', N'ቃሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (214, 23, N'Kutaber', N'ኩታበር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (215, 23, N'Legambo', N'ለጋምቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (216, 23, N'Legehida', N'ለገ ሂዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (217, 23, N'Mehal sayint', N'መሃል ሳይንት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (218, 23, N'Mekdela', N'መቅደላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (219, 23, N'Tenta', N'ተንታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (220, 23, N'Werebabu', N'ወረባቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (221, 23, N'Sayintajibar', N'ሳይንታጅባር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (222, 22, N'Libo kemkem', N'ሊቦ ከምከም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (223, 23, N'Albuko', N'አልቡኮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (224, 23, N'Ketta/Kelala', N'ከታ ከለላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (225, 23, N'Tehuledere', N'ተሁለደሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (226, 23, N'Wogdi', N'ወጊዲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (227, 24, N'Dahana', N'ደሃና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (228, 24, N'Gazgibla', N'ጋዝጊበላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (229, 24, N'Sahilla', N'ሳሂላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (230, 24, N'Sekota', N'ሰቆጣ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (231, 24, N'Zequala', N'ዝቅዋላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (232, 25, N'Bambasi', N'ባምባሰ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (233, 25, N'Kurmuk', N'ኩርሙክ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (234, 25, N'Assosa', N'አሶሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (235, 25, N'Oda buldigilu', N'ኦዳቡልዲግሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (236, 25, N'Homosha', N'ሆሞሻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (237, 25, N'Menge', N'መንጌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (238, 26, N'Belojiganfoy', N'በሎጂገንፎዬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (239, 27, N'Maokomo SW', N'ሰ/ምዕ/ማኦኮሞ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (240, 28, N'Belojiganfoy', N'በሎጂገንፎዬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (241, 28, N'Mandura', N'መንዱራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (242, 27, N'mao-komo', N'ማኦኮሞ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (243, 29, N'Dire Dawa', N'ድሬዳዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (244, 30, N'Abobo', N'አቦቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (245, 30, N'Dimma', N'ዲማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (246, 30, N'Gambella Zuria', N'ጋምቤላ ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (247, 30, N'Gog', N'ጎግ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (248, 30, N'Jor', N'ጆር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (249, 31, N'Jor', N'ጆር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (250, 31, N'Abobo', N'አቦቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (251, 31, N'Dima', N'ዲማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (252, 31, N'G/Zuria', N'ጋ/ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (253, 31, N'Gog', N'ጎግ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (254, 32, N'Itang', N'ኢታንግ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (255, 34, N'Mengsh', N'መንግሽ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (256, 34, N'Godere', N'ጎደሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (257, 33, N'Akobo', N'አኮቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (258, 33, N'Goderie', N'ጎደሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (259, 33, N'Itang Spe. Woreda', N'ኢታንግ ልዩ ወረዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (260, 33, N'Jikawo', N'ጂካዎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (261, 33, N'Lare', N'ላሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (262, 33, N'Mengesh', N'መንገሽ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (263, 33, N'Wentuwa', N'ወንቱዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (264, 35, N'Harar', N'ሀረር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (265, 35, N'Harar/Hund', N'ሀረር ሁንደ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (266, 35, N'Erer', N'ኤረር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (267, 35, N'Sofi', N'ሶፊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (268, 36, N'Erer', N'ኤረር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (269, 36, N'Sofi', N'ሶፊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (270, 54, N'Kombolcha', N'ኮምቦልቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (271, 52, N'Mekele', N'መቀሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (272, 153, N'Aleltu', N'Aleltu', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (273, 153, N'Debrelibanos', N'Debrelibanos', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (274, 153, N'Degem', N'Degem', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (275, 153, N'Dera', N'Dera', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (276, 153, N'Gerar Jarso', N'Gerar Jarso', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (277, 153, N'Hidabu Abote', N'Hidabu Abote', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (278, 153, N'Kuyu', N'Kuyu', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (279, 153, N'wara Jarso', N'wara Jarso', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (280, 153, N'Wuchale', N'Wuchale', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (281, 153, N'Yaya Gulele', N'Yaya Gulele', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (282, 37, N'Chole', N'ጮሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (283, 37, N'Diksis', N'ዲክሲስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (284, 37, N'Dodota', N'ዶዶታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (285, 37, N'Gololca', N'ጎሎልጫ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (286, 37, N'Guna', N'ጉና ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (287, 37, N'H/wabe', N'ሀ/ዋቤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (288, 37, N'Hetosa', N'ሂቶሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (289, 37, N'Honqolowabe', N'ሀንቆሎ ዋቤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (290, 37, N'Jaju', N'ጀሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (291, 37, N'Marti', N'መርቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (292, 37, N'Munesa', N'ሙኔሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (293, 37, N'Robe', N'ሮቤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (294, 37, N'Seru', N'ሴሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (295, 37, N'Shirka', N'ሺርካ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (296, 37, N'Sude', N'ሱዴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (297, 37, N'Tena', N'ጤና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (298, 37, N'Tiyo', N'ጢዮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (299, 37, N'Zuway Dugda', N'ዙዋይ ዱግዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (300, 38, N'Agarfa', N'አጋርፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (301, 38, N'Barbare', N'በርበሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (303, 38, N'Dalo Mena', N'ደሎ መና ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (304, 38, N'Dawa Kechen', N'ደዋ ቀጨን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (305, 38, N'Dawe Serer', N'ደዋ ሰረር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (306, 38, N'G/Damole', N'ገ/ደሞሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (307, 38, N'Gasara', N'ገሰራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (308, 38, N'Giner', N'ጊኒር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (309, 38, N'Goba', N'ጎባ', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (310, 38, N'Gololcha', N'ጎሎልቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (311, 38, N'Goro', N'ጎሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (312, 38, N'Harena Bulki', N'ሀሬና ቡልኪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (313, 38, N'L/Hidha', N'ለገ ሂዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (314, 38, N'Meda Walabu', N'መደ ወላቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (315, 38, N'Rayitu', N'ራይቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (316, 38, N'Sawena', N'ሰዌና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (317, 38, N'Sinana', N'ሲናና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (318, 39, N'Abaya', N'አባያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (319, 39, N'Arero', N'አሬሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (320, 39, N'Bule hora', N'ቡሌ ሆራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (321, 39, N'Dhas', N'ዳስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (322, 39, N'Dillo', N'ዲሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (323, 39, N'Dugda Dawa', N'ዱግዳ ደዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (324, 39, N'Galana', N'ገላና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (325, 39, N'Melka Soda', N'መልካ ሶዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (326, 39, N'Meyo', N'ሚዮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (327, 39, N'Teltele', N'ተልተሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (328, 40, N'Chenaksen', N'ጨናክሰን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (329, 40, N'Babile', N'ባቢሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (330, 40, N'Bedeno', N'በደኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (331, 40, N'Deder', N'ደደር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (332, 40, N'Fedis', N'ፈዲስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (333, 40, N'Girawa', N'ግራዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (334, 40, N'Gola Oda', N'ጎላ ኦዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (335, 40, N'Haromaya', N'ሀሮማያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (336, 40, N'Jarso', N'ጃርሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (337, 40, N'Kersa', N'ቀርሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (338, 40, N'Kombolcha', N'ኮምቦልቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (339, 40, N'Kumbi', N'ኩምቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (340, 40, N'Kurfa Chelie', N'ኩርፋ ጨሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (341, 40, N'Mayu muluke', N'ማዩ ሙልኬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (342, 40, N'Meta', N'ሜታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (343, 40, N'Midaga tola', N'ሚደጋ ቶላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (344, 41, N'Adami Tulu  Jido Kombolch', N'አዳሚ ቱሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (345, 42, N'Diga Leka', N'ዲጋ ሌቃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (346, 42, N'Haro Limu', N'ሀሮ ሊሙ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (347, 42, N'Sasiga', N'ሳሲጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (348, 40, N'Melka Belo', N'መልካ በሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (349, 41, N'Adama', N'አዳማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (350, 43, N'Diga', N'ዲጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (351, 43, N'Guto Jida', N'ጉቶ ጂዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (352, 43, N'Sasiga', N'ሳሲጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (356, 45, N'Adola', N'አዶላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (357, 45, N'Girja', N'ጊርጃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (358, 45, N'Goro Dolo', N'ጎሮ ዶላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (359, 45, N'Liben', N'ሊበን ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (360, 45, N'O/Shakiso', N'ሻኪሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (361, 45, N'Saba Bora', N'ሰባ ቦሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (362, 45, N'Wadera', N'ወደራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (363, 46, N'Chora boter', N'ጮራ ቦቶር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (364, 46, N'Kersa', N'ቀርሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (365, 46, N'Nono Benja', N'ኖኖ ቤንጃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (366, 47, N'Dale Sadi', N'ዳሌ ሳዲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (367, 47, N'Gawo Kebe', N'ጋዎ ክቤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (368, 47, N'Hawa Gelan', N'ሀዋ ገላን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (369, 47, N'Jimma Horo', N'ጂማ ሆሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (370, 47, N'Dalesadi', N'ዳልሰዲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (371, 48, N'Abichu Nya', N'አቢቹ ኛኣ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (372, 48, N'Alalitu', N'አላልቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (373, 48, N'Dagem', N'ደገም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (374, 48, N'Debrelibanos', N'ደብረ ሊባኖስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (375, 48, N'Dera', N'ደራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (376, 48, N'Girar Jarso', N'ግራር ጃርሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (377, 48, N'Hidabu Abote', N'ሂደቡ አቦቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (378, 48, N'Jida', N'ጂዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (379, 48, N'Sheno', N'ሸኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (380, 48, N'Kuyu', N'ኩዩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (381, 48, N'wara jarso', N'ወረ ጃርሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (382, 48, N'Wuchale', N'ዉጫሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (383, 48, N'Yaya Gulele', N'ያያ ጉለሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (384, 49, N'Adaba', N'አዳባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (385, 49, N'Arsi Negele', N'አርሲ ነገሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (386, 49, N'Dodola', N'ዶዶላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (387, 49, N'Gedeb Assasa', N'ጋዳብ ሃሳሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (388, 49, N'Kofeli', N'ኮፈሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (389, 49, N'Kokosa', N'ኮኮሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (390, 49, N'Kore', N'ቆሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (391, 49, N'Nansebo', N'ናንሰቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (392, 49, N'Seraro', N'ስራሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (393, 49, N'Shala', N'ሻላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (394, 49, N'Shashemene', N'ሻሸመኔ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (395, 50, N'Anchar', N'አንጫር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (396, 50, N'Boke', N'ቦኬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (397, 50, N'Burka Dimtu', N'ቡርቃ ዲምቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (398, 50, N'Daro Lebu', N'ዳሮለቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (399, 50, N'Goba Koricha', N'ጉባ ቆርቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (400, 50, N'Habro', N'ሀብሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (401, 50, N'Hawi Gudina', N'ሃዊ ጉዲና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (402, 50, N'Chiro', N'ጭሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (403, 50, N'Gemechis', N'ገመቺስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (404, 50, N'Kore', N'ቆር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (405, 50, N'Kuni', N'ቁኒ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (406, 50, N'Mesela', N'መሰላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (407, 50, N'Mieso', N'ሚኤሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (408, 50, N'Tulo', N'ጡሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (409, 51, N'A/Gindebert', N'ጊንደበረት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (410, 51, N'Adda Berga', N'አደአበርጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (411, 51, N'Ambo', N'አምቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (412, 51, N'Bako Tibe', N'ባኮ ቲቤ', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (413, 51, N'Cheliya', N'ጨሊያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (414, 51, N'Dano', N'ዳኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (415, 51, N'EIfata', N'እልፋታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (416, 51, N'Elu Gelan', N'እሉ ገላን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (417, 51, N'Ginde Beret', N'ግንደበረት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (419, 51, N'Jeldu', N'ጀልዱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (420, 51, N'Meta Robe', N'ሜታሮቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (421, 51, N'Mida Kegn', N'ሚዳቀኝ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (422, 51, N'T/ Kutaye', N'ቶኬ ኩታዬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (423, 50, N'Oda Bultum', N'ኦዳቡልቱም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (424, 50, N'Doba', N'ዶባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (425, 154, N'Kitu Kara/Menesibu', N'ቂጡ ከራ/መነሲቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (426, 73, N'Amaro SW', N'ደ/ምዕ /አማሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (427, 77, N'Burji SW', N'ሰ/ምዕ/ ቡርጂ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (428, 67, N'Lomma', N'ሎማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (429, 67, N'Gena Bosa', N'ገናቦሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (430, 74, N'Dasenech', N'ዳሰነች', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (431, 74, N'Hamer', N'ሀመር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (432, 74, N'Ngagatom', N'ኛጋቶም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (433, 155, N'Dirashe SW', N'ሰ/ምዕ/ ደራሼ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (434, 65, N'A/minch Z.', N'አ/ምንጭ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (435, 65, N'Bonke', N'ቦንኬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (436, 65, N'Boreda', N'ቦረዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (437, 65, N'Chancha', N'ጨንቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (438, 65, N'Damba Goffa', N'ደምባጎፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (439, 65, N'Daramalo', N'ዳራማሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (440, 65, N'Dita', N'ዲታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (441, 65, N'Gazegoffa', N'ጋዝጎፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (442, 65, N'Kemba', N'ቀምባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (443, 65, N'Kucha', N'ቁጫ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (444, 65, N'O/D/tsehy', N'ኦ/ደ/ፀሃይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (445, 65, N'Zala', N'ዛላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (446, 68, N'Areba Minch', N'አርባ ምንጭ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (447, 68, N'Boreda', N'ቦርዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (448, 68, N'Chencha', N'ጨንቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (449, 68, N'D/Gofa', N'ደ/ጎፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (450, 68, N'Daremelo', N'ዳረሜሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (451, 68, N'Gaze Gofa', N'ጋዜ ጎፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (452, 68, N'Keneba', N'ከነባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (453, 68, N'Mirab Abaya', N'ምዕ/ አባይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (454, 68, N'Oyeda', N'ኦየዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (455, 68, N'Qucha', N'ቁቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (456, 81, N'Dela Zurea', N'ደላ ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (457, 81, N'Kochore', N'ኮቾሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (458, 81, N'Wonago', N'ወናጎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (459, 81, N'Yirgachefee', N'ይርጋጨፌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (460, 78, N'Cheha', N'ቸሃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (461, 78, N'G/G/Wolene', N'ገ/ገ/ወለኔ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (462, 78, N'M/Aklil', N'መ/አክሊል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (463, 78, N'Mareko', N'ማረቆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (464, 78, N'Meskan', N'መስካን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (465, 78, N'Sodo', N'ሶዶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (466, 66, N'Anlemo', N'አንሌሞ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (467, 66, N'Duna', N'ዱና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (468, 66, N'Gibe ', N'ጊቤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (469, 66, N'Gombora', N'ጎምቦራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (470, 66, N'Limo', N'ሊሞ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (471, 66, N'Misha', N'ሚሻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (472, 82, N'Tembaro', N'ጠምባሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (473, 70, N'Konso SW', N'ደ./ም/ኮንሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (474, 82, N'Damboya', N'ደምቦያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (475, 82, N'Angacha', N'አንጋቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (476, 74, N'B.Tsemay', N'በ/ፀይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (477, 74, N'Male', N'ማሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (478, 74, N'Salamago', N'ሰላማጎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (479, 69, N'Burji', N'ቡርጂ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (480, 75, N'Alecho ', N'አሌጮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (481, 75, N'Mierab ', N'ምዕራብ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (482, 75, N'Misrak ', N'ምስራቅ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (483, 75, N'Lanfero', N'ላንፈሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (484, 75, N'Sankura', N'ሳንኩራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (485, 75, N'Seltie', N'ስልጤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (486, 69, N' Aleta Chiko', N'አለታ ጪኮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (487, 69, N' Shembedeno', N'ሸምበደኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (488, 69, N'Aleta Wondo', N'አለታ ወንዶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (489, 69, N'Arerosa', N'አሬሮሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (490, 69, N'Benesa', N'በንሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (491, 69, N'Bona Zuria', N'ቦና ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (492, 69, N'Borecha', N'ቦሬቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (493, 69, N'Dara', N'ዳራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (494, 69, N'Habela Tula', N'ሀቤላ ቱላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (495, 69, N'Hawasa Zurea', N'ሀዋሳ ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (496, 69, N'Loka Abaya', N'ሎካ አባያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (497, 69, N'Shebedion', N'ሸበዲኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (498, 69, N'Wondo Genet', N'ወንዶገነት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (499, 75, N'Dalocha', N'ዳሎቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (500, 75, N'Wulebareg', N'ዉሌበርግ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (501, 74, N'Bena ', N'ቤና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (502, 73, N'Derashe', N'ደራሼ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (503, 73, N'Halaba', N'ሀላባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (504, 73, N'Konso', N'ኮንሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (505, 76, N'Boloso Sore', N'ቦሎሶ ሶሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (506, 76, N'Kindo Didaye', N'ቂንዶ ዲዳዬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (507, 76, N'Boloso Bombe', N'ቦሎሶ ቦምቤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (508, 76, N'Damot gale', N'ዳሞት ጋሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (509, 76, N'Damot pulassa', N'ዳሞት ፑላሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (510, 76, N'Damot sore', N'ዳሞት ሶሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (511, 76, N'Humbo', N'ሁምቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (512, 76, N'Kindo Koysha', N'ቅንዶ ቆሼ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (513, 76, N'Offa', N'ኦፋ', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (514, 76, N'Soddo Zuria', N'ሶዶ ዙሪያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (515, 76, N'Damot woyde', N'ዳሞት ወይዴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (516, 76, N'Duguna fango', N'ዱጉና ፋንጎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (517, 82, N'Hadero&tunto', N'ሀዴሮ እና ጡንጦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (518, 82, N'Kacha Bira', N'ቀጫ ቢራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (519, 82, N'Kedida gamila', N'ቀዲዳ ገሚላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (520, 86, N'Gana Bosa', N'ገናቦሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (521, 65, N'Mierab Abaya', N'ምዕ/አባይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (522, 68, N'Bonke', N'ቦንኬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (523, 68, N'Dita', N'ዲታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (524, 68, N'Kemba', N'ከምባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (525, 68, N'Ouba D/tsehy', N'ኡቦ ደ/ፀሃይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (526, 68, N'Zala', N'ዛላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (527, 66, N'E/Badewa', N'ምስ/ባደዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (528, 66, N'Mierab Bedewacho', N'ምዕ/ባደዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (529, 66, N'Shashego', N'ሻሸጎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (530, 66, N'Soro', N'ሶሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (531, 82, N'Haderona Tunte', N'ሀዴሮና ቱንቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (532, 82, N'Doyogena', N'ዶዮጌና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (533, 69, N'Dale', N'ዳሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (534, 69, N'Gana Bosa', N'ገናቦሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (535, 69, N'Hula', N'ሁላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (536, 156, N'Filtu', N'ፊልቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (537, 156, N'Hudet', N'ሁደት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (538, 156, N'Moyale', N'ሞያል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (539, 53, N'Abergele', N'አበርገሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (540, 53, N'Adwa', N'አድዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (541, 53, N'Aheferom', N'አህፈሮም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (542, 53, N'Degua Temben', N'ደጋ ተምቤን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (543, 53, N'Kola Temben', N'ቆላ ተምቤን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (544, 53, N'Laelay Maychew', N'ላዕላይ ማይጨው', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (545, 53, N'Mereb Lehe', N'መረብለህ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (546, 53, N'Werie Lehe', N'ወሪለሀ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (547, 53, N'Kola ', N'ቆላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (548, 53, N'Laelay', N'ላዕላይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (549, 53, N'Tahtay', N'ታሀታይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (550, 53, N'Tahtay Maychew', N'ታሀታይ ማይጨው', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (551, 53, N'Tanqua ', N'ታንኩዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (552, 53, N'Tanqua Abergele', N'ታንኩዋ አበርገሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (553, 83, N'Abergale', N'አበርገሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (554, 83, N'Adwa', N'አድዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (555, 83, N'Asgede Tsembela', N'አሰገደፀምበላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (556, 83, N'D/Tembin', N'ደ/ተምቤን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (557, 83, N'Kola Temben', N'ቆላ ተምቤን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (558, 83, N'L/Myechew', N'ላይ ማይጨው', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (559, 83, N'Medbayzana', N'መደባይዜና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (560, 83, N'N/Adiet', N'ሰሜን አዴት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (561, 83, N'Tahatay Koraro', N'ታህታይ ቆራሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (562, 83, N'Tahetay maichew', N'ታህታይ ማይጨው', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (563, 83, N'Tanqa Abergale', N'ታንኩዋ አበርገሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (564, 83, N'Atsbi Wenberta', N'አፅቢንበራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (565, 83, N'Erob', N'ኤሮብ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (566, 83, N'Ganta Afeshum', N'ጋንታ አፍሹም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (567, 83, N'Gulomekeda', N'ጉሎሜከዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (568, 83, N'Hawzien', N'ሀውዜን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (569, 83, N'Saesi Tsaedaemba', N'ሳአሲ ፀዐደዳምባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (570, 83, N'Wukro', N'ዉቁሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (571, 83, N'Zalambessa', N'ዛላምበሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (572, 83, N'G/Mekeda', N'ገ/መከዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (573, 83, N'Kelet awelalo', N'Kelet awelalo', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (574, 88, N'Laelay adiyabo', N'ላዕላይ አዲያቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (575, 88, N'Medabayzana', N'መዳባይዜና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (576, 88, N'Selemtie', N'ሰላምታይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (577, 88, N'Tahtay koraro', N'ታህታይ ቆራሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (578, 88, N'Tahtayadiyabo', N'ታህታይ አዲያቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (579, 88, N'Asgede Tsimbila', N'አስገደ ፅምብላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (580, 88, N'Laelay ', N'ላዕላይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (581, 88, N'Medebay ', N'መደባይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (582, 88, N'Tahtay ', N'ታህታይ ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (583, 85, N'Alaje', N'አላጌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (584, 85, N'Alamata', N'አላማጣ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (585, 85, N'Endamekoni', N'እንዳመኮኒ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (586, 85, N'Enderta', N'እንደርታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (587, 85, N'Hintalo Wajirat', N'ሂንታሎዋጂረት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (588, 85, N'Ofla', N'ኦፍላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (589, 85, N'Raya-Azebo', N'ራያ አዘቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (590, 85, N'Samre Saharti', N'ሳምረ ሳሃርቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (591, 87, N'Enderta', N'እንደርታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (592, 87, N'Samre sahreti', N'ሳምረ ሳሂረቲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (593, 87, N'Hintalo Wajirat', N'ሂንታሎ ዋጂራት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (594, 87, N'Hintalo ', N'ሂንታሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (595, 85, N'Ambaalaje', N'አምባለላጌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (596, 85, N'Tanqua Aber gel', N'ታንኩዋ አበርገል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (597, 84, N'Asgede Tsimbila', N'አስገደ ፅምብላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (598, 84, N'Laelay Adiyabo', N'ላዕላይ አዲያቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (599, 84, N'Medebay Zanna', N'መደባይ ዛና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (600, 84, N'T/Koraro', N'ተ/ቆራሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (601, 84, N'Tahatay Koraro', N'ታህታይ ቆራሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (602, 84, N'Tahtay Adiyabo', N'ታህታይ አዲያቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (603, 84, N'Tselmeti', N'ፀለምት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (604, 76, N'Woreta', N'ወረታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (613, 11, N'Afder', N'አፍደር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (622, 10, N'Special woreda', N'ልዩ ዞን', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (623, 317, N'Senbeta', NULL, 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (626, 2, N'Zone 6', N'ዞን 6', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (627, 2, N'Zone7', N'ዞን 7', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (628, 627, N'keb1', N'ከብ 1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (629, 0, N'Addis Ababa', N'አዲስ አበባ', 1)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (630, 629, N'Kolfe Keranyo', N'ኮልፌ ቀራኒዮ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (631, 629, N'Bole', N'ቦሌ', 2)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (632, 629, N'Yeka', N'የካ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (633, 629, N'Akaki Kality', N'አቃቂ ቃሊቲ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (634, 629, N'Gulele', N'ጉለሌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (635, 629, N'Arada', N'አራዳ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (636, 629, N'Nefaslk Lafeto', N'ንፋስልክ ላፍቶ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (637, 629, N'Ledeta', N'ልደታ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (638, 629, N'Addis Ketema', N'አዲስ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (639, 629, N'Kirkos ', N'ቂርቆስ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (640, 630, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (641, 630, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (642, 630, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (643, 630, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (644, 630, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (645, 630, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (646, 630, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (647, 630, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (648, 630, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (649, 630, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (650, 631, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (651, 631, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (652, 631, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (653, 631, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (654, 631, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (655, 631, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (656, 631, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (657, 631, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (658, 631, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (659, 631, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (660, 632, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (661, 632, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (662, 632, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (663, 632, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (664, 632, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (665, 632, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (666, 633, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (667, 633, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (668, 633, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (669, 633, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (670, 633, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (671, 633, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (672, 633, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (673, 633, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (674, 633, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (675, 633, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (676, 633, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (677, 633, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (678, 633, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (679, 633, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (680, 634, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (681, 634, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (682, 634, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (683, 634, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (684, 634, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (685, 634, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (686, 634, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (687, 634, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (688, 634, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (689, 634, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (690, 634, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (691, 634, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (692, 634, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (693, 634, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (694, 635, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (695, 635, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (696, 635, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (697, 635, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (698, 635, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (699, 635, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (700, 635, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (701, 635, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (702, 635, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (703, 635, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (704, 635, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (705, 635, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (706, 635, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (707, 635, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (708, 637, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (709, 637, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (710, 637, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (711, 637, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (712, 637, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (713, 637, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (714, 637, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (715, 637, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (716, 637, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (717, 637, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (718, 637, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (719, 637, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (720, 637, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (721, 637, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (722, 638, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (723, 638, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (724, 638, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (725, 638, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (726, 638, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (727, 638, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (728, 638, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (729, 638, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (730, 638, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (731, 638, N'10', N'10', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (732, 638, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (733, 638, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (734, 638, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (735, 638, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (736, 639, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (737, 639, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (738, 639, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (739, 639, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (740, 639, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (741, 639, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (742, 639, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (743, 639, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (744, 639, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (745, 639, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (746, 639, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (747, 639, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (748, 639, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (749, 639, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (750, 9, N'Liyu Zone', N'ልዩ ዞን', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (751, 9, N'Sebeta', N'ሰበታ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (752, 630, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (753, 630, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (754, 630, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (755, 630, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (756, 630, N'15', N'15', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (757, 631, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (758, 631, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (759, 631, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (760, 631, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (761, 631, N'15', N'15', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (762, 632, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (763, 632, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (764, 632, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (765, 632, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (766, 632, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (767, 632, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (768, 632, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (769, 632, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (770, 632, N'15', N'15', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (771, 636, N'1', N'1', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (772, 636, N'2', N'2', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (773, 636, N'3', N'3', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (774, 636, N'4', N'4', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (775, 636, N'5', N'5', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (776, 636, N'6', N'6', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (777, 636, N'7', N'7', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (778, 636, N'8', N'8', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (779, 636, N'9', N'9', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (780, 636, N'10', N'10', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (781, 636, N'11', N'11', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (782, 636, N'12', N'12', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (783, 636, N'13', N'13', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (784, 636, N'14', N'14', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (785, 48, N'Feche', N'ፍቼ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (786, 9, N'South west Shewa', N'ደ/ ም/ ሸዋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (787, 786, N'Wolliso', N'ወሊሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (788, 46, N'AGARO', N'አጋሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (790, 750, N'sendafa ', N'ሰንዳፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (791, 9, N'Ilu Aba Bor', N'ኢሉ አባቦራ ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (792, 791, N'Matu', N'መቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (796, 786, N'Tole', N'ቶሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (797, 9, N'Horo Guduru Walega', N'ሆሮ ጉዱሩ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (798, 797, N'Shanbu', N'ሻምቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (799, 43, N'Danbi dolo', N'ደምቢ ዶሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (800, 9, N'Gelan City ', N'ገላን ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (801, 9, N'Bishotu', N'ቢሾፍቱ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (802, 9, N'Adama City', N'አዳማ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (803, 9, N'Waliso', N'ወልሶ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (804, 9, N'Dukem City', N'ዱከም ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (805, 9, N'Lege Tafo City', N'ለገጣፎ ለገዳዲ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (806, 9, N'Suluta City', N'ሱሉልታ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (807, 9, N'Burau City', N' ቡራዩ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (808, 42, N'Dambi Dolo', N'Dambi Dolo', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (809, 9, N'Jimma City', N'ጅማ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (810, 750, N'Holeta', N'ሆለታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (811, 750, N'sululta wereda', N'ሱሉልታ ወረዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (812, 750, N'sebeta Awas', N'ሰበታ ሃዋስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (813, 750, N'welmara wereda', N'ወልማራ ወራዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (814, 786, N'Karsa Malima', N'ቀርሳ ማልማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (815, 750, N'Dukem city', N'ዱከም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (816, 750, N'sebeta city', N'ሰበታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (818, 20, N'marabite', N'መራቤቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (819, 3, N'Bahirdari', N'ባህርዳር', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (820, 819, N'Bahirdari', N'ባህርዳር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (821, 3, N'W/Gojem', N'ምዕራበ ጎጃም', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (822, 821, N'Odet', N'ኦዴት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (823, 821, N'kurit', N'ቁሪት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (1809, 821, N'Jabi xanan', N'ጃቢ ጠነን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (1810, 821, N'Baso Liban', N'ባሶ ሊባን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (1812, 791, N'Bedele', N'በደሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (1813, 3, N'awi', N'አዊ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (1814, 1813, N'jawi', N'ጃዊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2809, 17, N'Aneded', N'አነደድ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2810, 17, N'Awabel', N'አዋል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2811, 17, N'Baso Liben', N'ባሶ ሊበን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2812, 17, N'Bibugn', N'ቢቡኝ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2813, 17, N'Debay Telatgen', N'ደባይ ጠላተገን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2814, 17, N'Debre Elias', N'ደብረ ኤሊያስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2815, 17, N'Debre Marqos ', N'ዳብራ ማርቆስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2816, 17, N'Dejen', N'ደጀን', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2817, 17, N'Enarj Enawga', N'እነሪጂ እናዉጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2818, 17, N'Enemay(LOVE BICHENA)', N'ኢነማይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2819, 17, N'Goncha Siso Enese', N'ጎንጫ ሲሶ እኔሰ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2820, 17, N'Guzamn', N'ጉዛመን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2821, 17, N'Machakel', N'ማቻከል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2822, 17, N'Shebel Berenta', N'ሸበል በረንታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2823, 17, N'Sinan', N'ሲናን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2824, 18, N'Alefa', N'አልፋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2825, 18, N'Chilga', N'ጭልጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2826, 18, N'Dembiya', N'ደምቢያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2827, 18, N'Gondar (town)', N'ጎንደር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2828, 18, N'Lay Armachiho', N'ላይ አርማጮሆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2829, 18, N'Metemma', N'መተማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2830, 18, N'Mirab Armachiho', N'ምዕራብ አርማጮሆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2831, 18, N'Qwara', N'ቋራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2832, 18, N'Tach Armachiho', N'ታች አርማጮሆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2833, 18, N'Takusa', N'ተኩሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2834, 18, N'Tegeda', N'Tegeda', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2835, 19, N'Weldiya', N'ወልድያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2836, 20, N'Angolalla Tera', N'አንጎለላ ጠራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2837, 20, N'Asagirt', N'አሳግርት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2838, 20, N'Debre Berhan (town)', N'ደብረ ብርሃን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2839, 20, N'Ensaro', N'እንሳሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2840, 20, N'Geshe', N'ጌሽ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2841, 20, N'Hagere Mariamna Kesem', N'ሃ/ማ/ ቀሰም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2842, 20, N'Mojana Wadera', N'ሞጃና ዋደራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2843, 20, N'Moretna Jiru', N'ሞረትና ጂሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2844, 1813, N'Ankasha Guagusa', N'አንካሻ ጋጉሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2845, 1813, N'Banja Shekudad', N'ባንጃ ሸኩዳድ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2846, 1813, N'Dangila', N'ዳንግላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2847, 1813, N'Faggeta Lekoma', N'ፈገታ ለኮማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2848, 1813, N'Guagusa Shekudad', N'ጋጉሳ ሸኩዳድ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2849, 1813, N'Guangua', N'ጉዋንጉዋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2850, 821, N'Bahir Dar Zuria', N'ባህርዳር ዙርያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2851, 821, N'Bure', N'ቡሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2852, 821, N'Debub Achefer', N'ደቡብ አቸፈር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2853, 821, N'Dega Damot', N'ደጋ ዳሞት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2854, 821, N'Dembecha', N'ዳምባቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2855, 821, N'Finote Selam (town)', N'ፍኖታ ሳላም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2856, 821, N'Mecha Merawi', N'መጫ መራዊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2857, 821, N'Sekela', N'ሰቀላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2858, 821, N'Semien Achefer', N'ሰሜን አቸፈር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2859, 821, N'Wemberma', N'ወምበራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2860, 22, N'Debre Tabor (town)', N'ደብረ ታቦር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2861, 22, N'Dera', N'ደራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2862, 20, N'Fogera', N'ፎገራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2863, 22, N'Kemekem', N'ከመከም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2864, 23, N'Kelala', N'ከለላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2865, 23, N'Kombolcha (town)', N'ኮምቦልቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2866, 21, N'Kemise', N'ከሚሴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2867, 37, N'Asella', N'አሰላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2868, 37, N'Digeluna Tijo', N'ዲጌሉማ ጠጆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2871, 37, N'Lude Hitosa', N'ሉዴ ሂቶሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2872, 38, N'Dinsho ', N'ዲንሾ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2874, 40, N'Goro Gutu', N'ጎሮ ጉቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2876, 41, N'Ada''a', N'አደኣ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2877, 41, N'Bishoftu', N'ቢሾፍቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2878, 41, N'Bora', N'ቦራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2879, 41, N'Fentale', N'ፈንታሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2880, 41, N'Gimbichu', N'ጊምብቹ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2881, 41, N'Liben', N'ሊበን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2882, 22, N'Mekan Eyesus', N'መካነየሱስ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2883, 41, N'Lome', N'ሎሜ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2884, 41, N'Batu', N'ባቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2885, 43, N'Bonaya Boshe', N'ቦነያ  ቦሼ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2886, 43, N'Gida Ayana', N'ጊዳ አያና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2887, 43, N'Kiremu', N'ኪረሙ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2888, 43, N'Gobu Seyo', N'ጎቡ ሲዮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2889, 43, N'Gudeya Bila', N'ጉደያ ቢላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2890, 43, N'Guto Gida', N'ጉቶ ዲጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2891, 43, N'Leka Dulecha', N'ሌቃዱልቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2892, 43, N'Ibantu', N'ኤበንቱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2893, 43, N'Jimma Arjo', N'ጂማ አርጆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2894, 43, N'Limmu', N'ሊሙ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2895, 43, N'Nekemte', N'ነቀምቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2896, 43, N'Nunu Kumba', N'ኑኑ ቁምባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2897, 43, N'Sibu Sire', N'ሲቡ ሲሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2898, 43, N'Wama Hagalo', N'ዋማ ሀጋሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2899, 43, N'Wayu Tuka', N'ዋዩ ጡቃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2900, 45, N'Ana Sora', N'አና ሶራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2901, 45, N'Bore', N'ቦሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2902, 45, N'Dima', N'ዲማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2903, 45, N'Hambela Wamena', N'ሀመቤላ ዋመና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2904, 45, N'Harenfema', N'ሀሬንፌማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2905, 45, N'Kebri Mangest', N'ክብረ መንግስት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2906, 45, N'Kercha', N'ቀርጫ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2907, 45, N'Negele Borana', N'ነገሌ ቦረና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2908, 45, N'Uraga', N'ኡርጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2909, 750, N'Akaki', N'አቃቂ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2910, 750, N'Bereh', N'በረኽ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2911, 750, N'Burayu', N'ቡራዩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2912, 750, N'Mulo', N'ሙሎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2913, 46, N'Dedo', N'ዴዶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2914, 46, N'Gera', N'ጌራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2915, 46, N'Gomma', N'ጎማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2916, 46, N'Gumay', N'ጉማይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2918, 46, N'Limmu Sakka', N'ሊሙ ሰቃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2919, 46, N'Mana', N'ማና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2920, 46, N'Omo Nada', N'ኦሞ ናዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2921, 46, N'Seka Chekorsa', N'ሰቃ', 3)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2922, 46, N'Setema', N'ሰጤማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2923, 46, N'Shebe ', N'ሼበ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2924, 46, N'Sigmo', N'ስግሞ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2925, 46, N'Sokoru', N'ሶኮሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (2926, 46, N'Tiro Afeta', N'ጥሮ አፈታ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3809, 786, N'Amaya', N' አመያ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3810, 786, N'Bacho', N'በቾ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3811, 786, N'Dawo', N'ዳዎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3812, 786, N'Goro', N'ጎሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3813, 786, N'Ilu', N'ኢሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3814, 786, N'SadanSodo', N'ሰዳን ሶዶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3815, 786, N'SodoDaci', N'ሶዶ ዳጪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3819, 786, N'Wanci', N'ወንጪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3820, 51, N'jibat', N'ጂባት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3821, 51, N'Nono', N'ኖኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3822, 51, N'Dendi', N'ደንዲ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3823, 51, N'Ejere', N'እጂሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3824, 51, N'Dire Incini', N'ድሬኢንጪኒ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3825, 154, N'KiltuKarra', N'ቂልጡካራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3826, 154, N'BojiDirmaji', N'ቦጅድርማጂ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3827, 797, N'Ababo Guduru', N'አባቦ ጉዱሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3828, 797, N'Jima Rare', N'ጂማ ራሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3829, 797, N'Guduru', N'ጉዱሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3830, 154, N'Ganji', N'ገንጂ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3831, 154, N'Haru', N'ሃሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3832, 154, N'Jarso', N'ጃርሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3833, 154, N'Gulliso', N'ጉሊሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3834, 154, N'BojiCHoKorsa', N'ቦጅጮቆርሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3835, 154, N'Begi', N'ቤጊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3836, 154, N'Aira', N'አይራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3837, 154, N'Gimbi', N'ጊምቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3838, 154, N'Yubdo', N'ዩብዶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3839, 154, N'SayoNole', N'ሰዮኖሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3840, 154, N'Kondala', N'ቆንዳላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3841, 154, N'BaboGambel', N'ባቦገምቤል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3842, 154, N'Mena Sibu', N'መነሲቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3843, 154, N'Homa', N'ሆማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3844, 154, N'Najjo', N'ነጆ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3845, 154, N'LaloAsabi', N'ላሎአሳቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3846, 154, N'NoleKaba', N'ኖሌካባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3847, 40, N'Qarsa', N'ቀርሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (3853, 40, N'Dadar', N'ደደር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4848, 154, N'Kiltu Karra', N'ቂልጡካራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4849, 154, N'Boji Dirmaji', N'ቦጅድርማጂ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4854, 154, N'Haruu', N'ሃሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4856, 1813, N'chagni', N'ቻግኒ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4857, 4, N'Kemeshi Zone', N'ከመሺዞን', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4858, 4857, N'Kemeshi', N'ከመሺ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4859, 4857, N'AgaloMeti', N'ሀገሎሜጢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4860, 4857, N'SirbaAbay', N'ስርበአባይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4861, 4857, N'BaloJinganfoy', N'በሎጂንገንፎይ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4862, 4857, N'Yaso', N'ያሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4863, 4, N'Metakel  Zone', N'መተከልዞን', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4864, 4863, N'Wanbara', N'ዋንበራ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4865, 4863, N'Guba', N'ጉባ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4866, 4863, N'Dibati', N'ዲባጢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4867, 4863, N'Bulan', N'ቡለን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4868, 4863, N'Dangur', N'ዳንጉር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4869, 4, N'LiyuWereda', N'ልዩ ወረዳ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4870, 4869, N'Tongo', N'ቶንጎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4871, 4869, N'Pawi', N'ፓዊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4872, 797, N'Horo', N'.ሆሮ ወረዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4873, 797, N'Jardega Jarte', N'ጃርዳጋ ጃርቴ      ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4874, 797, N'Amuru', N'አሙሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4875, 797, N'Jima Genet', N'.ጅማ ገነቲ    ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4876, 797, N'Abe Dongoro', N'አቤዶንጎሮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4877, 797, N'Abay Coman', N'.አባይ ጮመን  ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4878, 797, N'Hababo Guduru', N'.ሀባቦ ጉዱሩ  ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4880, 797, N'Shambu', N'ሻምቡ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4881, 46, N'Jimma', N'ጅማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4882, 46, N'Limi kossa', N'ሊሙ ኮሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4883, 791, N'Hurumu ', N'ሁሩሙ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4884, 791, N'Yayo', N'ያዩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4885, 791, N'Dabo/Hana', N'ዳቦና/ሃና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4886, 791, N'Awaqa', N'አወቃ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4887, 791, N'Boracha', N'ቦረቻ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4888, 791, N'Didessa', N'ዲሳሳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4889, 791, N'Bilonopa ', N'ቢሎኖፓ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4890, 791, N'Algesachi', N'አልጌሳቺ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4891, 791, N'Darimu', N'ዳሪሙ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4892, 791, N'Dorani', N'ዶሮኒ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4893, 791, N'Mako', N'ማኮ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4894, 791, N'Dega', N'ዴጋ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4895, 791, N'Ale', N'አሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4896, 791, N'Didu', N'ዲዱ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4897, 791, N'Bure', N'ቡሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4898, 791, N'Uka', N'ኡካ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4899, 791, N'Salenono', N'ሳሌኖኖ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4900, 791, N'Gachi', N'ገቺ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4901, 17, N'Bure', N'ቡሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4902, 9, N'Shashemane City', N'ሻሸማኔ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4903, 3, N'west Gojam', N'ምዕራብ ጎጃም', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4904, 4903, N'Finotselam', N'ፍኖተሰላም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4905, 4903, N'S/Achefer', N'ደቡብ አቸፈር', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4907, 20, N'moretena jiru', N'ሞርትና ጅሩ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4908, 4903, N'sekela', N'ሰቀላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4913, 5, N'Machewu', N'ማጨው', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4914, 5, N'Alamata', N'አላማጣ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4915, 5, N'Adigrat', N'አዲግራት', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4916, 5, N'Aduwa', N'አዱዋ', 2)
GO
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4917, 5, N'Aksum', N'አክሱም', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4918, 5, N'Shire', N'ሽሬ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4919, 5, N'Humera', N'ሁመራ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4920, 20, N'mecha', N'ማጫ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4921, 751, N'Welete', N'ወለቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4922, 23, N'Borena', N'ቦረና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4923, 20, N'Axaye', N'አጣዬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4924, 20, N'shewa Robit', N'ሸዋ ሮቢት', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4925, 23, N'wedila', N'ዋድላ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4926, 20, N'ceefa robbii', N'ጨፋሮቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4927, 20, N'majate', N'ማጀቴ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4928, 20, N'Baso', N'ባሶ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4929, 20, N'Molale', N'ሞላሌ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4930, 78, N'borxonaa', N'ቦርጦና', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4931, 750, N'laga tafo l', N'ለገጣፎ ለገዳዲ ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4932, 23, N'makana salam', N'መከና ሰለም', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4933, 47, N'Dambi Dollo', N'Dambi Dollo', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4934, 47, N'Anfillo', N'Anfillo', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4935, 47, N'Sayyoo', N'Sayyoo', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4936, 47, N'Gidamii', N'Gidamii', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4937, 47, N'Yemalog Wolal', N'Yemalog Wolal', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4938, 47, N'Lalo Kile', N'Lalo Kile', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4939, 47, N'Dale Wabera', N'Dale Wabera', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4942, 47, N'Naannoo Gambeella', N'Naannoo Gambeella', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4944, 10, N'Bench Maji', N'Bench Maji', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4945, 4944, N'Babaqa', N'በበቀ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4946, 622, N'Yami', N'yami', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4947, 821, N'Jabi', N'ጃቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4948, 4903, N'Gonja Kolila', N'Gonja Kolila', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4949, 23, N'Ababaru', N'Ababaru', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4950, 52, N'Kula', N'Kula', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (4951, 74, N'Jinka', N'Jinka', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5948, 750, N'Galan', N'ገላን ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5949, 48, N'kinbibit ', N'ቅንቢብት ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5950, 78, N'enamorna aner ', N'እነሞርና ኤነር  ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5951, 78, N'ezha', N' እዣ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5952, 20, N'rabel ', N'ራቤል ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5953, 9, N'Nekemt City ', N'ነቄምቴ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5954, 51, N'Ejersa lafo', N'ኤጄርሳ ለፎ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5955, 51, N'Cobi', N'ጮቢ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5956, 51, N'Liban Jawi', N'ሊባን ጃዊ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5957, 51, N'Meta walqixe', N'ሜታ ወልቂጤ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5958, 37, N'sire', N'ስሬ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5959, 37, N'shanan kolu ', N'ሸነን ኮሉ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5960, 10, N'Kefa', N'ከፋ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5961, 5960, N'Gimbo', N'ጊምቦ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5962, 43, N'Abay choma', N'አባይ ጮማን', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5963, 9, N'AselaCity', N'አሰላ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5964, 10, N'Konta', N'ኮንታ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5965, 5964, N'liyu woreda', N'ልዩ ወረዳ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5966, 9, N'Holeta City', N'ሆለታ ከተማ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5967, 10, N'shaka', N'ሻካ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5968, 5967, N'yeki', N'የኪ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5969, 20, N'manzkeygebrial', N'መ/ቀ ገብሪኤል', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5970, 85, N'E/aleje', N'እ/አለጄ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5971, 84, N'kafta humera ', N'ቃፍታ ሁመራ ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5972, 750, N' Sululta City', N'ሱሉልታ ከተማ', 3)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5973, 9, N'Adama Traffic Complex', N' አዳማ ትራፍክ ኮምፕሌ', 2)
INSERT [dbo].[Location] ([Id], [ParentId], [LocationName], [LocationNameAmh], [LocationTypeId]) VALUES (5975, 9, N'Buno Bedele', N'ቡኖ በደሌ', 2)
SET IDENTITY_INSERT [dbo].[Location] OFF
INSERT [dbo].[LocationType] ([Id], [LocationTypeName]) VALUES (0, N'Federal')
INSERT [dbo].[LocationType] ([Id], [LocationTypeName]) VALUES (1, N'Region')
INSERT [dbo].[LocationType] ([Id], [LocationTypeName]) VALUES (2, N'Zone')
INSERT [dbo].[LocationType] ([Id], [LocationTypeName]) VALUES (3, N'Woreda')
INSERT [dbo].[LocationType] ([Id], [LocationTypeName]) VALUES (4, N'Kebele')
INSERT [dbo].[LocationType] ([Id], [LocationTypeName]) VALUES (5, N'City')
SET IDENTITY_INSERT [dbo].[MonthlyReport] ON 

INSERT [dbo].[MonthlyReport] ([Id], [ReportMonth], [ReportYear], [Status], [Region], [Zone], [Woreda], [Ccomment], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [ApprovedBy], [ApprovedDate], [VerifiedBy], [VerifiedDate], [IsReportAccepted], [ReportSenderName], [ReportSenderPhone], [ReportSenderQualificationId], [PublicBodyId]) VALUES (8, 1, 2018, 2, 3, 17, 104, N'Accepted in good quality', 3, CAST(0x0000AA2400000000 AS DateTime), NULL, NULL, 3, CAST(0x0000AA24017D759C AS DateTime), NULL, NULL, 1, N'Messaye Alemayehu', N'0911716869', 1, 2)
INSERT [dbo].[MonthlyReport] ([Id], [ReportMonth], [ReportYear], [Status], [Region], [Zone], [Woreda], [Ccomment], [CreatedBy], [CreatedDate], [LastModifiedBy], [LastModifiedDate], [ApprovedBy], [ApprovedDate], [VerifiedBy], [VerifiedDate], [IsReportAccepted], [ReportSenderName], [ReportSenderPhone], [ReportSenderQualificationId], [PublicBodyId]) VALUES (10, 2, 2018, 1, 3, 17, 4901, NULL, 3, CAST(0x0000AA2400000000 AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, 1, N'Banty Bahru', N'0911 716869', 5, 2)
SET IDENTITY_INSERT [dbo].[MonthlyReport] OFF
SET IDENTITY_INSERT [dbo].[MonthlySummary] ON 

INSERT [dbo].[MonthlySummary] ([Id], [MonthlyReportId], [DiseaseId], [SpeciesId], [NewOutbreak], [ActiveOutbreak], [NewCases], [Death], [Slaughtered], [AnimalAtRisk], [Control], [Prophylaxis]) VALUES (2, 8, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[MonthlySummary] ([Id], [MonthlyReportId], [DiseaseId], [SpeciesId], [NewOutbreak], [ActiveOutbreak], [NewCases], [Death], [Slaughtered], [AnimalAtRisk], [Control], [Prophylaxis]) VALUES (3, 8, 3, 1, 1, 1, 1, 1, 1, 1, 1, 1)
INSERT [dbo].[MonthlySummary] ([Id], [MonthlyReportId], [DiseaseId], [SpeciesId], [NewOutbreak], [ActiveOutbreak], [NewCases], [Death], [Slaughtered], [AnimalAtRisk], [Control], [Prophylaxis]) VALUES (4, 10, 1, 10, 1, 1, 1, 1, 1, 1, 1, 1)
SET IDENTITY_INSERT [dbo].[MonthlySummary] OFF
SET IDENTITY_INSERT [dbo].[Operation] ON 

INSERT [dbo].[Operation] ([Id], [Name]) VALUES (1, N'ViewPublicBody')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (2, N'ViewLocation')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (3, N'CREDLocation')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (4, N'CREDSpecies')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (5, N'CREDDiseases')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (6, N'CREDPublicBody')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (7, N'View')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (8, N'ViewMonthlyReport')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (9, N'CreateMonthlyReport')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (10, N'EditMonthlyReport')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (11, N'DeleteMonthlyReport')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (12, N'ApproveMonthlyReport')
INSERT [dbo].[Operation] ([Id], [Name]) VALUES (13, N'VerifyMonthlyReport')
SET IDENTITY_INSERT [dbo].[Operation] OFF
SET IDENTITY_INSERT [dbo].[Publicbody] ON 

INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (2, 0, N'Ministry Of Agriculture', 1)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (3, 2, N'Afar Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (4, 3, N'Amhara Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (5, 4, N'Benshangul Gumuz Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (6, 5, N'Tigray Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (7, 6, N'Dire Dawa Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (8, 7, N'Gambella Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (9, 8, N'Harar Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (10, 9, N'Oromiya Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (11, 10, N'SNNPR Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (12, 11, N'Somali Bureau of Agriculture', 2)
INSERT [dbo].[Publicbody] ([Id], [LocationId], [PublicbodyName], [PublicbodyTypeId]) VALUES (1002, 9, N'Bedele Regional Laboratory', 4)
SET IDENTITY_INSERT [dbo].[Publicbody] OFF
INSERT [dbo].[PublicBodyType] ([Id], [PublicBodyTypeName]) VALUES (1, N'Ministry')
INSERT [dbo].[PublicBodyType] ([Id], [PublicBodyTypeName]) VALUES (2, N'Regional Office')
INSERT [dbo].[PublicBodyType] ([Id], [PublicBodyTypeName]) VALUES (3, N'Federal Labratory')
INSERT [dbo].[PublicBodyType] ([Id], [PublicBodyTypeName]) VALUES (4, N'Regional Labratory')
INSERT [dbo].[Qualification] ([Id], [QualificationName]) VALUES (1, N'DVM')
INSERT [dbo].[Qualification] ([Id], [QualificationName]) VALUES (2, N'AHA')
INSERT [dbo].[Qualification] ([Id], [QualificationName]) VALUES (3, N'AHT')
INSERT [dbo].[Qualification] ([Id], [QualificationName]) VALUES (4, N'BVSC')
INSERT [dbo].[Qualification] ([Id], [QualificationName]) VALUES (5, N'BSC')
INSERT [dbo].[ReportYesNo] ([Id], [YesNo]) VALUES (1, N'Yes')
INSERT [dbo].[ReportYesNo] ([Id], [YesNo]) VALUES (2, N'No')
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([Id], [Name]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (2, N'ReportEncoder')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (3, N'RegionalEpidemology')
SET IDENTITY_INSERT [dbo].[Role] OFF
SET IDENTITY_INSERT [dbo].[RoleOperation] ON 

INSERT [dbo].[RoleOperation] ([Id], [RoleId], [OperationId]) VALUES (1, 1, 8)
INSERT [dbo].[RoleOperation] ([Id], [RoleId], [OperationId]) VALUES (3, 2, 9)
INSERT [dbo].[RoleOperation] ([Id], [RoleId], [OperationId]) VALUES (4, 2, 8)
INSERT [dbo].[RoleOperation] ([Id], [RoleId], [OperationId]) VALUES (5, 2, 2)
INSERT [dbo].[RoleOperation] ([Id], [RoleId], [OperationId]) VALUES (6, 3, 8)
SET IDENTITY_INSERT [dbo].[RoleOperation] OFF
SET IDENTITY_INSERT [dbo].[Species] ON 

INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (1, N'AVI', N'AVI')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (2, N'BOV', N'BOV')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (3, N'CAM', N'CAM')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (4, N'CAN', N'CAN')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (5, N'CAP', N'CAP')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (6, N'DRO', N'DRO')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (7, N'EQU', N'EQU')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (8, N'FEL', N'FEL')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (9, N'MAN', N'MAN')
INSERT [dbo].[Species] ([Id], [Name], [Abbrevations]) VALUES (10, N'OVI', N'OVI')
SET IDENTITY_INSERT [dbo].[Species] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([Id], [StatusName]) VALUES (1, N'Continuing')
INSERT [dbo].[Status] ([Id], [StatusName]) VALUES (2, N'Ended During Month')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[UserAccount] ON 

INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (3, N'admin', N'admin', N'admin@moa.gov.et', N'puNyHyZyutpzV7M3VszHO8Lz2N8SblEqIy2fxzQKOkE=', N'salt', 2, 1)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (1003, N'afar', N'afar', N'afar@gmail.com', N'7CeKOJASh7J3GhNzlSA4TUPksHj3iv/nAt7xCHdMziQ=', N'0.60211446769634', 3, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (1004, N'oromiya', N'oromiya', N'oromiya@gmail.com', N'7CeKOJASh7J3GhNzlSA4TUPksHj3iv/nAt7xCHdMziQ=', N'0.814928503155209', 10, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2004, N'afarep', N'afarep', N'afarep@gmail.com', N'7CeKOJASh7J3GhNzlSA4TUPksHj3iv/nAt7xCHdMziQ=', N'0.0401733368822249', 3, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2005, N'bedele', N'bedele', N'bedele@gmail.com', N'7CeKOJASh7J3GhNzlSA4TUPksHj3iv/nAt7xCHdMziQ=', N'0.701591447322439', 1002, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2006, N'tigray', N'Tigray', N'tigray@gmail.com', N'123456', N'0.987903795199424', 6, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2007, N'benishangule', N'benishangule', N'benishangule@gmail.com', N'123456', N'0.824785323731967', 5, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2008, N'somali', N'somali', N'somali@gmail.com', N'123456', N'0.395763686111087', 12, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2009, N'south', N'south', N'south@gmail.com', N'123456', N'0.825305195909601', 11, NULL)
INSERT [dbo].[UserAccount] ([Id], [UserName], [FullName], [Email], [Password], [Salt], [PublicbodyId], [IsActive]) VALUES (2010, N'harari', N'harari', N'harari@gmail.com', N'7CeKOJASh7J3GhNzlSA4TUPksHj3iv/nAt7xCHdMziQ=', N'0.589151900070324', 9, NULL)
SET IDENTITY_INSERT [dbo].[UserAccount] OFF
SET IDENTITY_INSERT [dbo].[UserRole] ON 

INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (1, 1003, 2)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (2, 3, 1)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (3, 1004, 2)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (1003, 2004, 3)
INSERT [dbo].[UserRole] ([Id], [UserId], [RoleId]) VALUES (1004, 2005, 2)
SET IDENTITY_INSERT [dbo].[UserRole] OFF
ALTER TABLE [dbo].[DetailOutbreak]  WITH CHECK ADD  CONSTRAINT [FK_DetailOutbreak_AgeGroup] FOREIGN KEY([AgeGroupId])
REFERENCES [dbo].[AgeGroup] ([Id])
GO
ALTER TABLE [dbo].[DetailOutbreak] CHECK CONSTRAINT [FK_DetailOutbreak_AgeGroup]
GO
ALTER TABLE [dbo].[DetailOutbreak]  WITH CHECK ADD  CONSTRAINT [FK_DetailOutbreak_Diagnosis] FOREIGN KEY([DiagnosisId])
REFERENCES [dbo].[Diagnosis] ([Id])
GO
ALTER TABLE [dbo].[DetailOutbreak] CHECK CONSTRAINT [FK_DetailOutbreak_Diagnosis]
GO
ALTER TABLE [dbo].[DetailOutbreak]  WITH CHECK ADD  CONSTRAINT [FK_DetailOutbreak_MonthlySummary] FOREIGN KEY([MonthlySummaryId])
REFERENCES [dbo].[MonthlySummary] ([Id])
GO
ALTER TABLE [dbo].[DetailOutbreak] CHECK CONSTRAINT [FK_DetailOutbreak_MonthlySummary]
GO
ALTER TABLE [dbo].[DetailOutbreak]  WITH CHECK ADD  CONSTRAINT [FK_DetailOutbreak_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([Id])
GO
ALTER TABLE [dbo].[DetailOutbreak] CHECK CONSTRAINT [FK_DetailOutbreak_Status]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Location] FOREIGN KEY([ParentId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Location]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_LocationType] FOREIGN KEY([LocationTypeId])
REFERENCES [dbo].[LocationType] ([Id])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_LocationType]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_DataStatus] FOREIGN KEY([Status])
REFERENCES [dbo].[DataStatus] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_DataStatus]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_GMonth] FOREIGN KEY([ReportMonth])
REFERENCES [dbo].[GMonth] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_GMonth]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_Location] FOREIGN KEY([Region])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_Location]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_Location1] FOREIGN KEY([Zone])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_Location1]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_Location2] FOREIGN KEY([Woreda])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_Location2]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_Publicbody] FOREIGN KEY([PublicBodyId])
REFERENCES [dbo].[Publicbody] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_Publicbody]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_Qualification] FOREIGN KEY([ReportSenderQualificationId])
REFERENCES [dbo].[Qualification] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_Qualification]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_ReportYesNo] FOREIGN KEY([IsReportAccepted])
REFERENCES [dbo].[ReportYesNo] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_ReportYesNo]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_UserAccount] FOREIGN KEY([CreatedBy])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_UserAccount]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_UserAccount1] FOREIGN KEY([LastModifiedBy])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_UserAccount1]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_UserAccount2] FOREIGN KEY([ApprovedBy])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_UserAccount2]
GO
ALTER TABLE [dbo].[MonthlyReport]  WITH CHECK ADD  CONSTRAINT [FK_MonthlyReport_UserAccount3] FOREIGN KEY([VerifiedBy])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[MonthlyReport] CHECK CONSTRAINT [FK_MonthlyReport_UserAccount3]
GO
ALTER TABLE [dbo].[MonthlySummary]  WITH CHECK ADD  CONSTRAINT [FK_MonthlySummary_Disease] FOREIGN KEY([DiseaseId])
REFERENCES [dbo].[Disease] ([Id])
GO
ALTER TABLE [dbo].[MonthlySummary] CHECK CONSTRAINT [FK_MonthlySummary_Disease]
GO
ALTER TABLE [dbo].[MonthlySummary]  WITH CHECK ADD  CONSTRAINT [FK_MonthlySummary_MonthlyReport] FOREIGN KEY([MonthlyReportId])
REFERENCES [dbo].[MonthlyReport] ([Id])
GO
ALTER TABLE [dbo].[MonthlySummary] CHECK CONSTRAINT [FK_MonthlySummary_MonthlyReport]
GO
ALTER TABLE [dbo].[MonthlySummary]  WITH CHECK ADD  CONSTRAINT [FK_MonthlySummary_Species] FOREIGN KEY([SpeciesId])
REFERENCES [dbo].[Species] ([Id])
GO
ALTER TABLE [dbo].[MonthlySummary] CHECK CONSTRAINT [FK_MonthlySummary_Species]
GO
ALTER TABLE [dbo].[Publicbody]  WITH CHECK ADD  CONSTRAINT [FK_Publicbody_Location] FOREIGN KEY([LocationId])
REFERENCES [dbo].[Location] ([Id])
GO
ALTER TABLE [dbo].[Publicbody] CHECK CONSTRAINT [FK_Publicbody_Location]
GO
ALTER TABLE [dbo].[Publicbody]  WITH CHECK ADD  CONSTRAINT [FK_Publicbody_PublicBodyType] FOREIGN KEY([PublicbodyTypeId])
REFERENCES [dbo].[PublicBodyType] ([Id])
GO
ALTER TABLE [dbo].[Publicbody] CHECK CONSTRAINT [FK_Publicbody_PublicBodyType]
GO
ALTER TABLE [dbo].[RoleOperation]  WITH CHECK ADD  CONSTRAINT [FK_RoleOperation_Operation] FOREIGN KEY([OperationId])
REFERENCES [dbo].[Operation] ([Id])
GO
ALTER TABLE [dbo].[RoleOperation] CHECK CONSTRAINT [FK_RoleOperation_Operation]
GO
ALTER TABLE [dbo].[RoleOperation]  WITH CHECK ADD  CONSTRAINT [FK_RoleOperation_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[RoleOperation] CHECK CONSTRAINT [FK_RoleOperation_Role]
GO
ALTER TABLE [dbo].[UserAccount]  WITH CHECK ADD  CONSTRAINT [FK_UserAccount_Publicbody] FOREIGN KEY([PublicbodyId])
REFERENCES [dbo].[Publicbody] ([Id])
GO
ALTER TABLE [dbo].[UserAccount] CHECK CONSTRAINT [FK_UserAccount_Publicbody]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_Role] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Role] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_Role]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_UserAccount] FOREIGN KEY([UserId])
REFERENCES [dbo].[UserAccount] ([Id])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_UserAccount]
GO
USE [master]
GO
ALTER DATABASE [dovar] SET  READ_WRITE 
GO
