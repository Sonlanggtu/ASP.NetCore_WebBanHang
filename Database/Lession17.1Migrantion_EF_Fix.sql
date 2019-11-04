USE [master]
GO
/****** Object:  Database [WebBanHangCoreApp]    Script Date: 11/4/2019 8:55:43 PM ******/
CREATE DATABASE [WebBanHangCoreApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebBanHangCoreApp', FILENAME = N'F:\Setup\SQL Server\Root directory\MSSQL13.MSSQLSERVER\MSSQL\DATA\WebBanHangCoreApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebBanHangCoreApp_log', FILENAME = N'F:\Setup\SQL Server\Root directory\MSSQL13.MSSQLSERVER\MSSQL\DATA\WebBanHangCoreApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [WebBanHangCoreApp] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebBanHangCoreApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebBanHangCoreApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebBanHangCoreApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebBanHangCoreApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [WebBanHangCoreApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebBanHangCoreApp] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [WebBanHangCoreApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET RECOVERY FULL 
GO
ALTER DATABASE [WebBanHangCoreApp] SET  MULTI_USER 
GO
ALTER DATABASE [WebBanHangCoreApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebBanHangCoreApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebBanHangCoreApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebBanHangCoreApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebBanHangCoreApp] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'WebBanHangCoreApp', N'ON'
GO
ALTER DATABASE [WebBanHangCoreApp] SET QUERY_STORE = OFF
GO
USE [WebBanHangCoreApp]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [WebBanHangCoreApp]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 11/4/2019 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvertistmentPages]    Script Date: 11/4/2019 8:55:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertistmentPages](
	[Id] [varchar](20) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_AdvertistmentPages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AdvertistmentPositions]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdvertistmentPositions](
	[Id] [varchar](20) NOT NULL,
	[PageId] [varchar](20) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_AdvertistmentPositions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Advertistments]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advertistments](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NULL,
	[Url] [nvarchar](250) NULL,
	[PositionId] [varchar](20) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[SortOrder] [int] NOT NULL,
 CONSTRAINT [PK_Advertistments] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](250) NOT NULL,
	[Content] [nvarchar](250) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AnnouncementUsers]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnnouncementUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AnnouncementId] [int] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[HasRead] [bit] NULL,
 CONSTRAINT [PK_AnnouncementUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoleClaims]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppRoles]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppRoles](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[NormalizedName] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[Description] [nvarchar](250) NULL,
 CONSTRAINT [PK_AppRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserClaims]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserLogins]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserLogins](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[ProviderKey] [nvarchar](max) NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserLogins] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserRoles]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserRoles](
	[UserId] [uniqueidentifier] NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_AppUserRoles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUsers]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUsers](
	[Id] [uniqueidentifier] NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[NormalizedUserName] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[NormalizedEmail] [nvarchar](max) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[FullName] [nvarchar](max) NULL,
	[BirthDay] [datetime2](7) NULL,
	[Balance] [decimal](18, 2) NOT NULL,
	[Avatar] [nvarchar](max) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_AppUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AppUserTokens]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AppUserTokens](
	[UserId] [uniqueidentifier] NOT NULL,
	[LoginProvider] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AppUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BillDetails]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BillId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[ColorId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
 CONSTRAINT [PK_BillDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Bills]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Bills](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](256) NOT NULL,
	[CustomerAddress] [nvarchar](256) NOT NULL,
	[CustomerMobile] [nvarchar](50) NOT NULL,
	[CustomerMessage] [nvarchar](256) NOT NULL,
	[PaymentMethod] [int] NOT NULL,
	[BillStatus] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[CustomerId] [uniqueidentifier] NOT NULL,
 CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Blogs]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blogs](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Image] [nvarchar](256) NULL,
	[Description] [nvarchar](500) NULL,
	[Content] [nvarchar](max) NULL,
	[HomeFlag] [bit] NULL,
	[HotFlag] [bit] NULL,
	[ViewCount] [int] NULL,
	[Tags] [nvarchar](max) NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[SeoPageTitle] [nvarchar](256) NULL,
	[SeoAlias] [nvarchar](256) NULL,
	[SeoKeywords] [nvarchar](256) NULL,
	[SeoDescription] [nvarchar](256) NULL,
 CONSTRAINT [PK_Blogs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BlogTags]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BlogTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BlogId] [int] NOT NULL,
	[TagId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_BlogTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Colors]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Colors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Code] [nvarchar](250) NULL,
 CONSTRAINT [PK_Colors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactDetails]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactDetails](
	[Id] [varchar](255) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](250) NULL,
	[Website] [nvarchar](250) NULL,
	[Address] [nvarchar](250) NULL,
	[Other] [nvarchar](max) NULL,
	[Lat] [float] NULL,
	[Lng] [float] NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_ContactDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feedbacks]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feedbacks](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Email] [nvarchar](250) NULL,
	[Message] [nvarchar](500) NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Feedbacks] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Footers]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footers](
	[Id] [varchar](255) NOT NULL,
	[Content] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Footers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Functions]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Functions](
	[Id] [varchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[URL] [nvarchar](250) NOT NULL,
	[ParentId] [nvarchar](128) NULL,
	[IconCss] [nvarchar](max) NULL,
	[SortOrder] [int] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Functions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Languages]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[IsDefault] [bit] NOT NULL,
	[Resources] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
	[Alias] [nvarchar](256) NOT NULL,
	[Content] [nvarchar](max) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Pages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permissions]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permissions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [uniqueidentifier] NOT NULL,
	[FunctionId] [varchar](128) NOT NULL,
	[CanCreate] [bit] NOT NULL,
	[CanRead] [bit] NOT NULL,
	[CanUpdate] [bit] NOT NULL,
	[CanDelete] [bit] NOT NULL,
 CONSTRAINT [PK_Permissions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategories]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[ParentId] [int] NOT NULL,
	[CategoryId] [int] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[HomeOrder] [int] NULL,
	[HomeFlag] [bit] NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[SeoPageTitle] [nvarchar](255) NULL,
	[SeoAlias] [varchar](255) NOT NULL,
	[SeoKeywords] [nvarchar](255) NULL,
	[SeoDescription] [nvarchar](255) NULL,
	[SortOrder] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[OwnerId] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImages]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[Path] [nvarchar](250) NULL,
	[Caption] [nvarchar](250) NULL,
 CONSTRAINT [PK_ProductImages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductQuantities]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductQuantities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[SizeId] [int] NOT NULL,
	[ColorId] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_ProductQuantities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[HomeOrder] [int] NULL,
	[Image] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[PromotionPrice] [decimal](18, 2) NULL,
	[OriginalPrice] [decimal](18, 2) NOT NULL,
	[OwnerId] [int] NOT NULL,
	[HotFlag] [bit] NULL,
	[HomeFlag] [bit] NULL,
	[Tags] [nvarchar](max) NULL,
	[Unit] [nvarchar](max) NULL,
	[ViewCount] [int] NULL,
	[SortOrder] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[DateCreated] [datetime2](7) NOT NULL,
	[DateModified] [datetime2](7) NOT NULL,
	[SeoPageTitle] [nvarchar](255) NULL,
	[SeoAlias] [varchar](255) NOT NULL,
	[SeoKeywords] [nvarchar](255) NULL,
	[SeoDescription] [nvarchar](255) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductTags]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductTags](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[TagId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ProductTags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sizes]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sizes](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NULL,
 CONSTRAINT [PK_Sizes] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slides]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slides](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Description] [nvarchar](250) NULL,
	[Image] [nvarchar](250) NOT NULL,
	[Url] [nvarchar](250) NULL,
	[DisplayOrder] [int] NULL,
	[Status] [bit] NOT NULL,
	[Content] [nvarchar](max) NULL,
	[GroupAlias] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Slides] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemConfigs]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemConfigs](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value1] [nvarchar](max) NULL,
	[Value2] [int] NULL,
	[Value3] [bit] NULL,
	[Value4] [datetime2](7) NULL,
	[Value5] [decimal](18, 2) NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_SystemConfigs] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tags]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tags](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Tags] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[WholePrices]    Script Date: 11/4/2019 8:55:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[WholePrices](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ProductId] [int] NOT NULL,
	[FromQuantity] [int] NOT NULL,
	[ToQuantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_WholePrices] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191104064721_InitDatabase', N'3.0.0')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'4b6ff4a4-25fa-4258-48b4-08d760f37cba', N'Admin', N'ADMIN', N'2be33fb2-a065-4c63-816c-c67ed367b614', N'Top manager')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'22c09d0b-c838-4adf-48b5-08d760f37cba', N'Staff', N'STAFF', N'10b4acca-9049-406f-8a8a-e692e0233d16', N'Staff')
INSERT [dbo].[AppRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp], [Description]) VALUES (N'95519f16-55cf-4aa5-48b6-08d760f37cba', N'Customer', N'CUSTOMER', N'8a5a7b0a-5100-4a00-be00-79683c9d3555', N'Customer')
INSERT [dbo].[AppUserRoles] ([UserId], [RoleId]) VALUES (N'85b6ed64-56f6-4b7c-8c39-08d760f37ce3', N'4b6ff4a4-25fa-4258-48b4-08d760f37cba')
INSERT [dbo].[AppUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [FullName], [BirthDay], [Balance], [Avatar], [DateCreated], [DateModified], [Status]) VALUES (N'85b6ed64-56f6-4b7c-8c39-08d760f37ce3', N'admin', N'ADMIN', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHcT13S7+TNPkbVfsnL+Fch7pdfLFy8y/ci9kruGTSq4rQWp35jaXorL4yAJdWh2MQ==', N'EOHQDLQ72ZWBV5D3TRD3UOGZNFZLXGGC', N'9e1c43bc-3bdb-4410-b1ac-ffc6e624dc3a', NULL, 0, 0, NULL, 1, 0, N'Administrator', NULL, CAST(0.00 AS Decimal(18, 2)), NULL, CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 0)
INSERT [dbo].[Footers] ([Id], [Content]) VALUES (N'DefaultFooterId', N'Footer')
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'ACCESS', N'Báo cáo truy cập', N'/admin/report/visitor', N'REPORT', N'fa-bar-chart-o', 2, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'ACTIVITY', N'Nhật ký', N'/admin/activity/index', N'SYSTEM', N'fa-home', 4, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'ADVERTISMENT', N'Quảng cáo', N'/admin/advertistment/index', N'UTILITY', N'fa-clone', 6, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'ANNOUNCEMENT', N'Thông báo', N'/admin/announcement/index', N'UTILITY', N'fa-clone', 3, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'BILL', N'Hóa đơn', N'/admin/bill/index', N'PRODUCT', N'fa-chevron-down', 3, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'BLOG', N'Bài viết', N'/admin/blog/index', N'CONTENT', N'fa-table', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'CONTACT', N'Liên hệ', N'/admin/contact/index', N'UTILITY', N'fa-clone', 4, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'CONTENT', N'Nội dung', N'/', NULL, N'fa-table', 3, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'ERROR', N'Lỗi', N'/admin/error/index', N'SYSTEM', N'fa-home', 5, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'FEEDBACK', N'Phản hồi', N'/admin/feedback/index', N'UTILITY', N'fa-clone', 2, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'FOOTER', N'Footer', N'/admin/footer/index', N'UTILITY', N'fa-clone', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'FUNCTION', N'Chức năng', N'/admin/function/index', N'SYSTEM', N'fa-home', 2, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'PRODUCT', N'Sản phẩm', N'/', NULL, N'fa-chevron-down', 2, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'PRODUCT_CATEGORY', N'Danh mục', N'/admin/productcategory/index', N'PRODUCT', N'fa-chevron-down', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'PRODUCT_LIST', N'Sản phẩm', N'/admin/product/index', N'PRODUCT', N'fa-chevron-down', 2, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'READER', N'Báo cáo độc giả', N'/admin/report/reader', N'REPORT', N'fa-bar-chart-o', 3, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'REPORT', N'Báo cáo', N'/', NULL, N'fa-bar-chart-o', 5, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'REVENUES', N'Báo cáo doanh thu', N'/admin/report/revenues', N'REPORT', N'fa-bar-chart-o', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'ROLE', N'Nhóm', N'/admin/role/index', N'SYSTEM', N'fa-home', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'SETTING', N'Cấu hình', N'/admin/setting/index', N'SYSTEM', N'fa-home', 6, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'SLIDE', N'Slide', N'/admin/slide/index', N'UTILITY', N'fa-clone', 5, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'SYSTEM', N'Hệ thống', N'/', NULL, N'fa-desktop', 1, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'USER', N'Người dùng', N'/admin/user/index', N'SYSTEM', N'fa-home', 3, 1)
INSERT [dbo].[Functions] ([Id], [Name], [URL], [ParentId], [IconCss], [SortOrder], [Status]) VALUES (N'UTILITY', N'Tiện ích', N'/', NULL, N'fa-clone', 4, 1)
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AdvertistmentPositions_PageId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_AdvertistmentPositions_PageId] ON [dbo].[AdvertistmentPositions]
(
	[PageId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Advertistments_PositionId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Advertistments_PositionId] ON [dbo].[Advertistments]
(
	[PositionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AnnouncementUsers_AnnouncementId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_AnnouncementUsers_AnnouncementId] ON [dbo].[AnnouncementUsers]
(
	[AnnouncementId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_AnnouncementUsers_UserId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_AnnouncementUsers_UserId] ON [dbo].[AnnouncementUsers]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_BillId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_BillId] ON [dbo].[BillDetails]
(
	[BillId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_ColorId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_ColorId] ON [dbo].[BillDetails]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_ProductId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_ProductId] ON [dbo].[BillDetails]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BillDetails_SizeId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_BillDetails_SizeId] ON [dbo].[BillDetails]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Bills_CustomerId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Bills_CustomerId] ON [dbo].[Bills]
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_BlogTags_BlogId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogTags_BlogId] ON [dbo].[BlogTags]
(
	[BlogId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_BlogTags_TagId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_BlogTags_TagId] ON [dbo].[BlogTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_Permissions_FunctionId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_FunctionId] ON [dbo].[Permissions]
(
	[FunctionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Permissions_RoleId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Permissions_RoleId] ON [dbo].[Permissions]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductImages_ProductId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductImages_ProductId] ON [dbo].[ProductImages]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductQuantities_ColorId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductQuantities_ColorId] ON [dbo].[ProductQuantities]
(
	[ColorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductQuantities_ProductId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductQuantities_ProductId] ON [dbo].[ProductQuantities]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductQuantities_SizeId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductQuantities_SizeId] ON [dbo].[ProductQuantities]
(
	[SizeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Products_CategoryId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_Products_CategoryId] ON [dbo].[Products]
(
	[CategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ProductTags_ProductId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_ProductId] ON [dbo].[ProductTags]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_ProductTags_TagId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_ProductTags_TagId] ON [dbo].[ProductTags]
(
	[TagId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_WholePrices_ProductId]    Script Date: 11/4/2019 8:55:45 PM ******/
CREATE NONCLUSTERED INDEX [IX_WholePrices_ProductId] ON [dbo].[WholePrices]
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AdvertistmentPositions]  WITH CHECK ADD  CONSTRAINT [FK_AdvertistmentPositions_AdvertistmentPages_PageId] FOREIGN KEY([PageId])
REFERENCES [dbo].[AdvertistmentPages] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AdvertistmentPositions] CHECK CONSTRAINT [FK_AdvertistmentPositions_AdvertistmentPages_PageId]
GO
ALTER TABLE [dbo].[Advertistments]  WITH CHECK ADD  CONSTRAINT [FK_Advertistments_AdvertistmentPositions_PositionId] FOREIGN KEY([PositionId])
REFERENCES [dbo].[AdvertistmentPositions] ([Id])
GO
ALTER TABLE [dbo].[Advertistments] CHECK CONSTRAINT [FK_Advertistments_AdvertistmentPositions_PositionId]
GO
ALTER TABLE [dbo].[AnnouncementUsers]  WITH CHECK ADD  CONSTRAINT [FK_AnnouncementUsers_Announcements_AnnouncementId] FOREIGN KEY([AnnouncementId])
REFERENCES [dbo].[Announcements] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnnouncementUsers] CHECK CONSTRAINT [FK_AnnouncementUsers_Announcements_AnnouncementId]
GO
ALTER TABLE [dbo].[AnnouncementUsers]  WITH CHECK ADD  CONSTRAINT [FK_AnnouncementUsers_AppUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnnouncementUsers] CHECK CONSTRAINT [FK_AnnouncementUsers_AppUsers_UserId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Bills_BillId] FOREIGN KEY([BillId])
REFERENCES [dbo].[Bills] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Bills_BillId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Colors_ColorId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Products_ProductId]
GO
ALTER TABLE [dbo].[BillDetails]  WITH CHECK ADD  CONSTRAINT [FK_BillDetails_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BillDetails] CHECK CONSTRAINT [FK_BillDetails_Sizes_SizeId]
GO
ALTER TABLE [dbo].[Bills]  WITH CHECK ADD  CONSTRAINT [FK_Bills_AppUsers_CustomerId] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[AppUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Bills] CHECK CONSTRAINT [FK_Bills_AppUsers_CustomerId]
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD  CONSTRAINT [FK_BlogTags_Blogs_BlogId] FOREIGN KEY([BlogId])
REFERENCES [dbo].[Blogs] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogTags] CHECK CONSTRAINT [FK_BlogTags_Blogs_BlogId]
GO
ALTER TABLE [dbo].[BlogTags]  WITH CHECK ADD  CONSTRAINT [FK_BlogTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[BlogTags] CHECK CONSTRAINT [FK_BlogTags_Tags_TagId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_AppRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AppRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_AppRoles_RoleId]
GO
ALTER TABLE [dbo].[Permissions]  WITH CHECK ADD  CONSTRAINT [FK_Permissions_Functions_FunctionId] FOREIGN KEY([FunctionId])
REFERENCES [dbo].[Functions] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Permissions] CHECK CONSTRAINT [FK_Permissions_Functions_FunctionId]
GO
ALTER TABLE [dbo].[ProductImages]  WITH CHECK ADD  CONSTRAINT [FK_ProductImages_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductImages] CHECK CONSTRAINT [FK_ProductImages_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_Colors_ColorId] FOREIGN KEY([ColorId])
REFERENCES [dbo].[Colors] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_Colors_ColorId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductQuantities]  WITH CHECK ADD  CONSTRAINT [FK_ProductQuantities_Sizes_SizeId] FOREIGN KEY([SizeId])
REFERENCES [dbo].[Sizes] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductQuantities] CHECK CONSTRAINT [FK_ProductQuantities_Sizes_SizeId]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_ProductCategories_CategoryId] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[ProductCategories] ([Id])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_ProductCategories_CategoryId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Products_ProductId]
GO
ALTER TABLE [dbo].[ProductTags]  WITH CHECK ADD  CONSTRAINT [FK_ProductTags_Tags_TagId] FOREIGN KEY([TagId])
REFERENCES [dbo].[Tags] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ProductTags] CHECK CONSTRAINT [FK_ProductTags_Tags_TagId]
GO
ALTER TABLE [dbo].[WholePrices]  WITH CHECK ADD  CONSTRAINT [FK_WholePrices_Products_ProductId] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[WholePrices] CHECK CONSTRAINT [FK_WholePrices_Products_ProductId]
GO
USE [master]
GO
ALTER DATABASE [WebBanHangCoreApp] SET  READ_WRITE 
GO
