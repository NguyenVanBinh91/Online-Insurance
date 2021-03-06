USE [master]
GO
CREATE DATABASE [InsurraceDB]
GO
ALTER DATABASE [InsurraceDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [InsurraceDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [InsurraceDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [InsurraceDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [InsurraceDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [InsurraceDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [InsurraceDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [InsurraceDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [InsurraceDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [InsurraceDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [InsurraceDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [InsurraceDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [InsurraceDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [InsurraceDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [InsurraceDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [InsurraceDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [InsurraceDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [InsurraceDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [InsurraceDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [InsurraceDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [InsurraceDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [InsurraceDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [InsurraceDB] SET RECOVERY FULL 
GO
ALTER DATABASE [InsurraceDB] SET  MULTI_USER 
GO
ALTER DATABASE [InsurraceDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [InsurraceDB] SET DB_CHAINING OFF 
GO
USE [InsurraceDB]
GO
/****** Object:  Table [dbo].[About]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [uniqueidentifier] NOT NULL,
	[Title] [nvarchar](255) NULL,
	[Description] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[IsDeleted] [bit] NOT NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](50) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ClaimInsurance]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClaimInsurance](
	[Id] [uniqueidentifier] NOT NULL,
	[Registration_InsuranceId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[Reply] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](255) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_ClaimInsurance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Contact]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Contact](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](256) NULL,
	[ObjectName] [nvarchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Mobile] [varchar](20) NULL,
	[Website] [varchar](256) NULL,
	[Email] [varchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Contact__3214EC07B68E50F5] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Credential]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Credential](
	[UserGroupId] [varchar](50) NOT NULL,
	[RoleId] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Credential_1] PRIMARY KEY CLUSTERED 
(
	[UserGroupId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Feedback]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Feedback](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](256) NULL,
	[Address] [nvarchar](256) NULL,
	[Content] [nvarchar](max) NULL,
	[Reply] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Feedback__3214EC07ABFD67FA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Footer]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Footer](
	[Id] [uniqueidentifier] NOT NULL,
	[CoppyRight] [nvarchar](100) NULL,
	[Address] [nvarchar](256) NULL,
	[PhoneNumber] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Footer__3214EC07852F6A97] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Insurrance]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Insurrance](
	[Id] [uniqueidentifier] NOT NULL,
	[InsurranceCategoryId] [uniqueidentifier] NULL,
	[InsurranceCode] [nvarchar](50) NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](max) NULL,
	[MetaTitle] [nvarchar](250) NULL,
	[ImagesInsurrance] [nvarchar](250) NULL,
	[Price] [decimal](18, 0) NULL CONSTRAINT [DF_Insurrance_Price_1]  DEFAULT ((0)),
	[InsurancePeriod] [nvarchar](255) NULL,
	[Quantity] [int] NULL CONSTRAINT [DF_Insurrance_Quantity_1]  DEFAULT ((0)),
	[IsDeleted] [bit] NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
 CONSTRAINT [PK_Insurrance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InsurranceCategory]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InsurranceCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](250) NULL,
	[Description] [nvarchar](50) NULL,
	[MetaTitle] [nvarchar](50) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NULL,
 CONSTRAINT [PK_InsurranceCategory] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Menu]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MenuName] [nvarchar](256) NOT NULL,
	[Link] [nvarchar](256) NULL,
	[DisplayOrder] [int] NULL,
	[ParentId] [int] NULL,
	[Target] [nvarchar](256) NOT NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Menu__3214EC079B6A10D6] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[News]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[News](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Summary] [nvarchar](max) NULL,
	[MetaTitle] [varchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](256) NULL,
	[NewsCategoryId] [uniqueidentifier] NULL,
	[Warranty] [int] NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[TopHot] [datetime] NULL,
	[ViewCount] [int] NULL,
	[Tag] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Content__3214EC0722536217] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewsCategory]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewsCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[MetaTitle] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](256) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Category__3214EC07DEE8C6AA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Order]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Order](
	[Id] [uniqueidentifier] NOT NULL,
	[UserId] [uniqueidentifier] NOT NULL,
	[ShipName] [nvarchar](256) NOT NULL,
	[ShipPhone] [nvarchar](50) NOT NULL,
	[ShipAddress] [nvarchar](256) NOT NULL,
	[ShipEmail] [varchar](256) NOT NULL,
	[Status] [bit] NOT NULL CONSTRAINT [DF_Order_Status]  DEFAULT ((0)),
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Order__3214EC07DF9E2F66] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[ProductId] [uniqueidentifier] NOT NULL,
	[OrderId] [uniqueidentifier] NOT NULL,
	[Quantity] [int] NULL,
	[Price] [decimal](18, 0) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC,
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[Code] [varchar](20) NULL,
	[MetaTitle] [nvarchar](256) NULL,
	[Description] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](256) NULL,
	[Price] [decimal](18, 0) NULL,
	[PromotionPrice] [decimal](18, 0) NULL,
	[IncludeVAT] [bit] NULL,
	[Quantity] [int] NULL,
	[ProductCategoryId] [uniqueidentifier] NULL,
	[Detail] [ntext] NULL,
	[Warranty] [int] NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[TopHot] [bit] NULL,
	[IsNormalProduct2] [bit] NULL,
	[IsNormalProduct1] [bit] NULL,
	[IsNewProduct] [bit] NULL,
	[ViewCount] [int] NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Product__3214EC072E0A9E49] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[Id] [uniqueidentifier] NOT NULL,
	[Name] [nvarchar](256) NULL,
	[MetaTitle] [varchar](256) NULL,
	[ParentId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[SeoTitle] [nvarchar](256) NULL,
	[MetaKeywords] [nvarchar](256) NULL,
	[MetaDescriptions] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__ProductC__3214EC077834B296] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Registration_Insurance]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Registration_Insurance](
	[Id] [uniqueidentifier] NOT NULL,
	[InsurranceId] [uniqueidentifier] NULL,
	[UserId] [uniqueidentifier] NULL,
	[FullName] [nvarchar](255) NULL,
	[DateOfBirth] [date] NULL,
	[Address] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[LicensePlate] [nvarchar](255) NULL,
	[RangeOfVehicle] [nvarchar](255) NULL,
	[RegistrationDate] [datetime] NULL,
	[ExpirationDate] [datetime] NULL,
	[TotalMoney] [int] NULL,
	[Avatar] [nvarchar](255) NULL,
	[CMND] [nvarchar](255) NULL,
	[Status] [nvarchar](255) NULL,
	[RegistrationInsuranceCode] [nvarchar](50) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
 CONSTRAINT [PK_Registration_Insurance] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Slide]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slide](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UrlImage] [nvarchar](256) NOT NULL,
	[DisplayOrder] [int] NULL,
	[Link] [nvarchar](256) NULL,
	[Description] [nvarchar](256) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__Slide__3214EC073DFECF16] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[User]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[User](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [varchar](50) NULL,
	[AvatarUrl] [nvarchar](256) NULL,
	[UserName] [varchar](50) NOT NULL,
	[Password] [varchar](50) NULL,
	[ConfirmPassword] [varchar](50) NULL,
	[FirstName] [nvarchar](100) NULL,
	[LastName] [nvarchar](100) NULL,
	[ResetPasswordCode] [nvarchar](100) NULL,
	[Email] [varchar](256) NULL,
	[Address] [nvarchar](max) NULL,
	[CreatedOn] [datetimeoffset](7) NULL,
	[CreatedBy] [nvarchar](256) NULL,
	[ModifiedOn] [datetimeoffset](7) NULL,
	[ModifiedBy] [nvarchar](256) NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK__User__3214EC07B2B93D14] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserGroup]    Script Date: 1/18/2021 4:56:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserGroup](
	[Id] [varchar](50) NOT NULL,
	[Name] [nvarchar](256) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[About] ([Id], [Title], [Description], [Content], [IsDeleted], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn]) VALUES (N'71725cfd-cf6d-49d9-b152-9102907d997e', N'ABOUT AA INSURRANCE', N'For nearly a century, AIA has served the ever-changing needs of millions of people across the Asia-Pacific region.', N'<p>AIA Vietnam is a member of AIA Group - the world&#39;s largest listed independent life insurance group with Asian origin.</p>

<p>Founded in 2000 with the aim of protecting the prosperity and financial safety of the Vietnamese people, AIA Vietnam is currently one of the leading life insurance companies and a brand recognized by customers and trusted public.</p>

<p>WHY CHOOSE AIA?<br />
We know that life is inherently unpredictable. With a strong financial background and a deep understanding of the Asian market, we are here to help you overcome the ups and downs of life.</p>

<p>We are always a pioneer in building innovative service models to deliver classy experiences to customers. This is most clearly demonstrated through &quot;iPoS&quot;, &quot;nest by AIA&quot;, &quot;AIA Exchange&quot; and &quot;NEXT General Agent&quot;.<br />
AIA Vietnam&#39;s goal is to become the preeminent life insurer in Vietnam.</p>
', 0, NULL, NULL, N'admin', CAST(N'2021-01-18T01:13:31.5559755+07:00' AS DateTimeOffset))
INSERT [dbo].[ClaimInsurance] ([Id], [Registration_InsuranceId], [UserId], [Reply], [Description], [Status], [ModifiedBy], [CreatedOn], [CreatedBy], [ModifiedOn]) VALUES (N'afd7a381-4f0c-4979-bef0-37dab14a79bb', N'56fdd3fe-325d-4967-84d8-3802f3e77ccd', N'f6c9eba9-a724-4335-9165-7260f863a329', N'OkK', N'Oke', N'Responded', N'admin', CAST(N'2021-01-18T15:15:54.0000000+07:00' AS DateTimeOffset), N'ngobakha', CAST(N'2021-01-18T16:34:29.3880175+07:00' AS DateTimeOffset))
INSERT [dbo].[ClaimInsurance] ([Id], [Registration_InsuranceId], [UserId], [Reply], [Description], [Status], [ModifiedBy], [CreatedOn], [CreatedBy], [ModifiedOn]) VALUES (N'0d3e431c-c931-46ec-b3be-ad9bc3ffd99c', N'f99e334d-0489-484c-a202-6060e19b20a8', N'ec85004f-cd89-4d2f-b02b-910c6ee621f1', N'Ok l', N'What is life insurance? 1
According to Law on Insurance Business No. 12 / VBHN-VPQH: Life insurance is a type of insurance for the insured''s life or death.', N'Responded', N'admin', CAST(N'2021-01-18T15:35:14.0000000+07:00' AS DateTimeOffset), N'lebao', CAST(N'2021-01-18T16:34:35.0172604+07:00' AS DateTimeOffset))
INSERT [dbo].[ClaimInsurance] ([Id], [Registration_InsuranceId], [UserId], [Reply], [Description], [Status], [ModifiedBy], [CreatedOn], [CreatedBy], [ModifiedOn]) VALUES (N'04a6ef3a-0777-4998-9a46-f96b4653cd4e', N'56fdd3fe-325d-4967-84d8-3802f3e77ccd', N'f6c9eba9-a724-4335-9165-7260f863a329', N'Ok em', N'What is life insurance? 1
According to Law on Insurance Business No. 12 / VBHN-VPQH: Life insurance is a type of insurance for the insured''s life or death.', N'Responded', N'admin', CAST(N'2021-01-18T15:14:42.0000000+07:00' AS DateTimeOffset), N'ngobakha', CAST(N'2021-01-18T16:34:38.4473012+07:00' AS DateTimeOffset))
INSERT [dbo].[ClaimInsurance] ([Id], [Registration_InsuranceId], [UserId], [Reply], [Description], [Status], [ModifiedBy], [CreatedOn], [CreatedBy], [ModifiedOn]) VALUES (N'62617f9c-1f94-4648-b4c4-fc64a623b169', N'f99e334d-0489-484c-a202-6060e19b20a8', N'ec85004f-cd89-4d2f-b02b-910c6ee621f1', NULL, N'Insurance enterprise or life insurance company is an enterprise established, organized and operating under the provisions of this Law and other relevant laws for insurance and reinsurance business.', N'Unconfimred', NULL, CAST(N'2021-01-18T16:46:04.5437221+07:00' AS DateTimeOffset), N'lebao', NULL)
SET IDENTITY_INSERT [dbo].[Contact] ON 

INSERT [dbo].[Contact] ([Id], [Title], [ObjectName], [Address], [Mobile], [Website], [Email], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'Insurance', N'Da Nang City Social Insurance', N'99 Xô Viết Nghệ Tĩnh, Hải Châu', N'0236.478.479', N'https://Insurance.com.vn', N'freestyledanang@gmail.com', CAST(N'2019-05-29T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T00:57:32.2019090+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Contact] ([Id], [Title], [ObjectName], [Address], [Mobile], [Website], [Email], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'District Social Insurance', N'Ngu Hanh Son District Social Insurance', N'48 Hai Bà Trung, Hội An', N'0235.487.489', N'https://Insurance.com.vn', N'freestylehoian@gmail.com', CAST(N'2019-05-29T12:22:26.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T00:56:32.6704449+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Contact] OFF
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'ADD_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'CREATE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'DELETE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'EDIT_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'UPDATE_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'UPDATE_USER_GROUP')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_CREDENTIAL')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_LAYOUT')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_ROLE')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_USER')
INSERT [dbo].[Credential] ([UserGroupId], [RoleId]) VALUES (N'ADMIN', N'VIEW_USER_GROUP')
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'0ea663e4-be02-4f8f-a9c7-3a2f0e4c4522', N'Bùi Thế Toàn', N'0213158128', N'toan38582@donga.edu.vn', N'Gia Lai', N'CRUD for Layout, admin, login with facebook', N'Finish', CAST(N'2019-06-04T10:50:20.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:22.7982222+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b17940d6-204f-4079-9c5d-6411e2ae58fa', N'Lê Văn Quang', N'0789846512', N'quangle@gmail.com', N'Gia Lai', N'Role, User, UserGroup, Credentials (CRUD)', N'Finish', CAST(N'2019-06-04T10:49:28.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:36.4814440+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'ae2f9c04-2189-40d4-8037-afffd451384a', N'QUang oc cho', N'913712903123', N'quangle@gmail.com', N'as;ldfjkas', N'ngu nhu bo', N'ngu nhu cho dsfasdfasdf', CAST(N'2019-06-08T09:58:55.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-08T09:59:26.9347532+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a848b336-aecf-483d-a2b5-e2d821f5be2b', N'Trần Thị Thùy Linh', N'0912389143', N'linh38447@donga.edu.vn', N'Gia Lai', N'Form Login, Layout for Home page, CRUD, search, pagedlist, sort for User table', N'Finish', CAST(N'2019-06-04T10:51:31.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:46.6417554+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'2101bc7f-ad25-4556-84d7-eddd76209a45', N'Le Van Quang', N'0868486885', N'duachutthoinhe123@gmail.com', N'14 Doan uẩn ', N'ABCDSFG', N'Ok', CAST(N'2021-01-10T21:49:18.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2021-01-10T21:49:36.3377113+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Feedback] ([Id], [Name], [Phone], [Email], [Address], [Content], [Reply], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'ac526ab9-64dd-488f-8302-fc2f18d9ea7e', N'Trần Hữu Hùng', N'0123456789', N'hung38585@donga.edu.vn', N'Đà Nẵng', N'CRUD, search, pagedlist, sort for Product table', N'Finish', CAST(N'2019-06-04T10:48:30.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T11:55:52.5782255+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Footer] ([Id], [CoppyRight], [Address], [PhoneNumber], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'044bf44b-24af-4c55-a776-f93ae5e6ceb0', N'© 2021 Insurrance', N' Da Nang City Social Insurance', N'0988.944.608', NULL, NULL, CAST(N'2021-01-18T00:58:36.2258996+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Insurrance] ([Id], [InsurranceCategoryId], [InsurranceCode], [Name], [Description], [MetaTitle], [ImagesInsurrance], [Price], [InsurancePeriod], [Quantity], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'28498a97-0fb4-463b-88c0-3131cd309cdc', N'9ec4c651-1670-4c6b-8e70-001aa20d3684', N'Real-estate-insurance-8452', N'Real estate insurance', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra hendrerit rhoncus. Donec sem ex, tempus id nisi sit amet, viverra condimentum ipsum. Proin tempus dui in tellus tincidunt, vel laoreet eros molestie. Donec cursus finibus sapien faucibus auctor. Vivamus eget rhoncus augue. Nulla vitae pellentesque odio. Morbi mauris erat, fringilla quis nunc quis, gravida pretium orci. Pellentesque nec feugiat lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin turpis dui, ornare in molestie a, finibus fringilla leo. Sed a tempus nunc, eget euismod elit.</p>

<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed ultricies, nibh in lobortis dapibus, nunc sapien gravida ante, at auctor urna lacus sed quam. Cras tortor sapien, consectetur in purus non, euismod ultrices libero. Suspendisse potenti. Cras faucibus convallis sapien nec rutrum. In interdum mauris eu nunc bibendum mattis. Mauris lobortis mi ac mi ornare dignissim. Sed bibendum leo lorem, at accumsan enim congue sed. Duis volutpat sit amet lacus in ultricies. Mauris ultrices luctus erat, in elementum lacus sodales quis. Ut eu bibendum nisl, eget malesuada lacus.</p>

<p>Quisque sodales laoreet velit. Morbi mattis eu felis a dapibus. Praesent viverra imperdiet elit, quis malesuada lacus bibendum nec. Curabitur et nisl nec tellus ultricies egestas. Sed sollicitudin, magna ac dictum rutrum, massa velit ornare felis, eu condimentum quam ipsum ac ipsum. Vivamus pharetra velit ut libero efficitur congue. Nulla leo dui, rhoncus a quam ac, mollis ornare erat. Nulla hendrerit, ex nec euismod sollicitudin, dolor justo maximus arcu, sit amet pretium eros augue nec felis. Aenean auctor libero eget nulla auctor, sagittis posuere ante imperdiet.</p>

<p>Mauris id mattis tellus. Cras vitae quam dictum, mattis urna a, dignissim tortor. Nulla facilisi. Fusce et eleifend tortor, nec eleifend lorem. Aenean vel diam dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec orci ligula, accumsan ut placerat a, convallis egestas libero. Nam vitae libero eleifend, rhoncus metus ut, blandit felis. Vivamus sit amet vestibulum turpis. Donec turpis ipsum, bibendum quis enim ut, molestie gravida lectus. Aenean mattis efficitur euismod. Vivamus rhoncus congue lectus, sed aliquet orci convallis eu. Vestibulum sit amet ipsum gravida, tempor tellus at, ultrices risus.</p>

<p>Cras lacinia imperdiet massa, viverra malesuada nunc egestas ut. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eleifend malesuada tincidunt. Morbi quis nisi quis justo fermentum luctus non a lacus. Phasellus mattis tincidunt nunc ut vulputate. Donec ac nibh augue. Duis quis nibh massa. Praesent suscipit at arcu sit amet porta.</p>

<p>Generated 5 paragraphs, 419 words, 2805 bytes of&nbsp;<a href="https://www.lipsum.com/" title="Lorem Ipsum">Lorem Ipsum</a></p>
', N'Real-estate-insurance', N'/Content/Data/files/20191231103442-5c50.jpg', CAST(30000000 AS Decimal(18, 0)), N'120', 50, 0, CAST(N'2021-01-18T01:37:13.1992545+07:00' AS DateTimeOffset), N'admin', NULL, NULL)
INSERT [dbo].[Insurrance] ([Id], [InsurranceCategoryId], [InsurranceCode], [Name], [Description], [MetaTitle], [ImagesInsurrance], [Price], [InsurancePeriod], [Quantity], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'9d119728-a12c-45ee-a4bb-3a18766a8340', N'd00cb1fb-3ee1-4105-bbee-1e8a93842176', N'Motorcycle-insurance-12514', N'Motorcycle insurance', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra hendrerit rhoncus. Donec sem ex, tempus id nisi sit amet, viverra condimentum ipsum. Proin tempus dui in tellus tincidunt, vel laoreet eros molestie. Donec cursus finibus sapien faucibus auctor. Vivamus eget rhoncus augue. Nulla vitae pellentesque odio. Morbi mauris erat, fringilla quis nunc quis, gravida pretium orci. Pellentesque nec feugiat lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin turpis dui, ornare in molestie a, finibus fringilla leo. Sed a tempus nunc, eget euismod elit.</p>

<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed ultricies, nibh in lobortis dapibus, nunc sapien gravida ante, at auctor urna lacus sed quam. Cras tortor sapien, consectetur in purus non, euismod ultrices libero. Suspendisse potenti. Cras faucibus convallis sapien nec rutrum. In interdum mauris eu nunc bibendum mattis. Mauris lobortis mi ac mi ornare dignissim. Sed bibendum leo lorem, at accumsan enim congue sed. Duis volutpat sit amet lacus in ultricies. Mauris ultrices luctus erat, in elementum lacus sodales quis. Ut eu bibendum nisl, eget malesuada lacus.</p>

<p>Quisque sodales laoreet velit. Morbi mattis eu felis a dapibus. Praesent viverra imperdiet elit, quis malesuada lacus bibendum nec. Curabitur et nisl nec tellus ultricies egestas. Sed sollicitudin, magna ac dictum rutrum, massa velit ornare felis, eu condimentum quam ipsum ac ipsum. Vivamus pharetra velit ut libero efficitur congue. Nulla leo dui, rhoncus a quam ac, mollis ornare erat. Nulla hendrerit, ex nec euismod sollicitudin, dolor justo maximus arcu, sit amet pretium eros augue nec felis. Aenean auctor libero eget nulla auctor, sagittis posuere ante imperdiet.</p>

<p>Mauris id mattis tellus. Cras vitae quam dictum, mattis urna a, dignissim tortor. Nulla facilisi. Fusce et eleifend tortor, nec eleifend lorem. Aenean vel diam dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec orci ligula, accumsan ut placerat a, convallis egestas libero. Nam vitae libero eleifend, rhoncus metus ut, blandit felis. Vivamus sit amet vestibulum turpis. Donec turpis ipsum, bibendum quis enim ut, molestie gravida lectus. Aenean mattis efficitur euismod. Vivamus rhoncus congue lectus, sed aliquet orci convallis eu. Vestibulum sit amet ipsum gravida, tempor tellus at, ultrices risus.</p>

<p>Cras lacinia imperdiet massa, viverra malesuada nunc egestas ut. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eleifend malesuada tincidunt. Morbi quis nisi quis justo fermentum luctus non a lacus. Phasellus mattis tincidunt nunc ut vulputate. Donec ac nibh augue. Duis quis nibh massa. Praesent suscipit at arcu sit amet porta.</p>

<p>Generated 5 paragraphs, 419 words, 2805 bytes of&nbsp;<a href="https://www.lipsum.com/" title="Lorem Ipsum">Lorem Ipsum</a></p>
', N'Motorcycle-insurance', N'/Content/Data/files/gia_xe_sh_thang12_2.jpg', CAST(175000 AS Decimal(18, 0)), N'12', 200, 0, CAST(N'2021-01-18T01:34:12.8709278+07:00' AS DateTimeOffset), N'admin', NULL, NULL)
INSERT [dbo].[Insurrance] ([Id], [InsurranceCategoryId], [InsurranceCode], [Name], [Description], [MetaTitle], [ImagesInsurrance], [Price], [InsurancePeriod], [Quantity], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'174c0af7-5959-4d33-8d4b-c13f9be8b75b', N'bc6878e9-5529-4261-b145-ba2fc5d7a185', N'Lifetime-life-insurance 9999', N'Lifetime life insurance', N'<p>What is life insurance? 1<br />
According to Law on Insurance Business No. 12 / VBHN-VPQH: Life insurance is a type of insurance for the insured&#39;s life or death.</p>

<p>In legal aspect, life insurance is a contract that commits to pay the insurance premium of a life insurance company when the insured happens to have unexpected risks provided that the policyholder pays a fixed premium. The full period under a pre-agreed period could be 5 years, 10 years, 30 years&hellip;. Inside:</p>

<p>Insurance enterprise or life insurance company is an enterprise established, organized and operating under the provisions of this Law and other relevant laws for insurance and reinsurance business.<br />
Insured is a person whose health and life are the main insured subject of a life insurance policy. At present, an insurance policy has only one main insured (except for some participating products for pregnant women).<br />
The insurance buyer is actually the person who pays the periodical premium to maintain the contract. The insured can be the purchaser of insurance.<br />
An insurance policy has two parts: the primary life insurance and the supplementary insurance purchased with the main product. Accordingly, depending on each insurance package that the customer participates in, life insurance will cover the risks of accident, injury, serious illness, death and illness in hospital, surgery, and dentistry , maternity ...</p>

<p>The main purpose of life insurance is to protect people against unexpected risks, but in addition, life insurance combines savings and investment.</p>

<p>Currently on the market there are 18 life insurance companies operating in Vietnam. In which, only Bao Viet Life is a Vietnamese company, the remaining 17 companies are invested companies from major financial corporations in the world such as Manulife, AIA, Prudential, Dai-ichi Life, Hanwha life, Sun Life, Generali ... see more articles Life insurance companies in Vietnam to understand their charter capital and other information before joining.</p>

<p>In fact, insurance companies are also a business model, but especially a &quot;risky business&quot; model. Accordingly, the insurance company is a place to attract capital from the majority to operate a business and pay insurance benefits for unexpected risks occurring with a few of the majority contributing to the same financial fund.</p>

<p>Currently on the market there are 18 life insurance companies operating in Vietnam. In which, only Bao Viet Life is a Vietnamese company, the remaining 17 companies are invested companies from major financial corporations in the world such as Manulife, AIA, Prudential, Dai-ichi Life, Hanwha life, Sun Life, Generali ... see more articles Life insurance companies in Vietnam to understand their charter capital and other information before joining.</p>

<p>In fact, insurance companies are also a business model, but especially a &quot;risky business&quot; model. Accordingly, the insurance company is a place to attract capital from the majority to operate a business and pay insurance benefits for unexpected risks occurring with a few of the majority contributing to the same financial fund.</p>

<p>Currently on the market there are 18 life insurance companies operating in Vietnam. In which, only Bao Viet Life is a Vietnamese company, the remaining 17 companies are invested companies from major financial corporations in the world such as Manulife, AIA, Prudential, Dai-ichi Life, Hanwha life, Sun Life, Generali ... see more articles Life insurance companies in Vietnam to understand their charter capital and other information before joining.</p>

<p>In fact, insurance companies are also a business model, but especially a &quot;risky business&quot; model. Accordingly, the insurance company is a place to attract capital from the majority to operate a business and pay insurance benefits for unexpected risks occurring with a few of the majority contributing to the same financial fund.</p>

<p>Currently on the market there are 18 life insurance companies operating in Vietnam. In which, only Bao Viet Life is a Vietnamese company, the remaining 17 companies are invested companies from major financial corporations in the world such as Manulife, AIA, Prudential, Dai-ichi Life, Hanwha life, Sun Life, Generali ... see more articles Life insurance companies in Vietnam to understand their charter capital and other information before joining.</p>

<p>In fact, insurance companies are also a business model, but especially a &quot;risky business&quot; model. Accordingly, the insurance company is a place to attract capital from the majority to operate a business and pay insurance benefits for unexpected risks occurring with a few of the majority contributing to the same financial fund.</p>
', N'Lifetime-life-insurance', N'/Content/Data/files/anh_fnpr.jpg', CAST(200000000 AS Decimal(18, 0)), N'10000', 50, 0, CAST(N'2021-01-18T01:31:27.1985091+07:00' AS DateTimeOffset), N'admin', NULL, NULL)
INSERT [dbo].[Insurrance] ([Id], [InsurranceCategoryId], [InsurranceCode], [Name], [Description], [MetaTitle], [ImagesInsurrance], [Price], [InsurancePeriod], [Quantity], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'27e43e36-1def-4e2d-8ed7-c21956a76194', N'4ce0491b-17b0-49d9-b089-1ef74029f922', N'X5412F', N'Health Insurance 1', N'<p>According to the law on health insurance: Health insurance is a form of compulsory insurance that is applied to those under the provisions of the Law on Health Insurance for health care, not for profit purposes by the State. implementation organization.<br />
According to the Law amending and supplementing a number of articles of the Law on Health Insurance 2014, the maximum monthly health insurance premium is equal to 6% of the monthly salary or the base salary ... depending on the subject. But the State supports from 30% -100% of health insurance premiums for some subjects such as people with meritorious services to the revolution, near poor households, students ...</p>
', N'health-insurance', N'/Content/Data/files/Capture123.PNG', CAST(50000000 AS Decimal(18, 0)), N'6', 100, 1, CAST(N'2021-01-10T17:09:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-10T17:25:00.0582782+07:00' AS DateTimeOffset), N'admin')
INSERT [dbo].[Insurrance] ([Id], [InsurranceCategoryId], [InsurranceCode], [Name], [Description], [MetaTitle], [ImagesInsurrance], [Price], [InsurancePeriod], [Quantity], [IsDeleted], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy]) VALUES (N'9998179d-74eb-4f52-9ad1-dda2f1d5663c', N'4ce0491b-17b0-49d9-b089-1ef74029f922', N'Health-Insurance-1548', N'Health Insurance 2021', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra hendrerit rhoncus. Donec sem ex, tempus id nisi sit amet, viverra condimentum ipsum. Proin tempus dui in tellus tincidunt, vel laoreet eros molestie. Donec cursus finibus sapien faucibus auctor. Vivamus eget rhoncus augue. Nulla vitae pellentesque odio. Morbi mauris erat, fringilla quis nunc quis, gravida pretium orci. Pellentesque nec feugiat lectus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin turpis dui, ornare in molestie a, finibus fringilla leo. Sed a tempus nunc, eget euismod elit.</p>

<p>Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed ultricies, nibh in lobortis dapibus, nunc sapien gravida ante, at auctor urna lacus sed quam. Cras tortor sapien, consectetur in purus non, euismod ultrices libero. Suspendisse potenti. Cras faucibus convallis sapien nec rutrum. In interdum mauris eu nunc bibendum mattis. Mauris lobortis mi ac mi ornare dignissim. Sed bibendum leo lorem, at accumsan enim congue sed. Duis volutpat sit amet lacus in ultricies. Mauris ultrices luctus erat, in elementum lacus sodales quis. Ut eu bibendum nisl, eget malesuada lacus.</p>

<p>Quisque sodales laoreet velit. Morbi mattis eu felis a dapibus. Praesent viverra imperdiet elit, quis malesuada lacus bibendum nec. Curabitur et nisl nec tellus ultricies egestas. Sed sollicitudin, magna ac dictum rutrum, massa velit ornare felis, eu condimentum quam ipsum ac ipsum. Vivamus pharetra velit ut libero efficitur congue. Nulla leo dui, rhoncus a quam ac, mollis ornare erat. Nulla hendrerit, ex nec euismod sollicitudin, dolor justo maximus arcu, sit amet pretium eros augue nec felis. Aenean auctor libero eget nulla auctor, sagittis posuere ante imperdiet.</p>

<p>Mauris id mattis tellus. Cras vitae quam dictum, mattis urna a, dignissim tortor. Nulla facilisi. Fusce et eleifend tortor, nec eleifend lorem. Aenean vel diam dolor. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec orci ligula, accumsan ut placerat a, convallis egestas libero. Nam vitae libero eleifend, rhoncus metus ut, blandit felis. Vivamus sit amet vestibulum turpis. Donec turpis ipsum, bibendum quis enim ut, molestie gravida lectus. Aenean mattis efficitur euismod. Vivamus rhoncus congue lectus, sed aliquet orci convallis eu. Vestibulum sit amet ipsum gravida, tempor tellus at, ultrices risus.</p>

<p>Cras lacinia imperdiet massa, viverra malesuada nunc egestas ut. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec eleifend malesuada tincidunt. Morbi quis nisi quis justo fermentum luctus non a lacus. Phasellus mattis tincidunt nunc ut vulputate. Donec ac nibh augue. Duis quis nibh massa. Praesent suscipit at arcu sit amet porta.</p>

<p>Generated 5 paragraphs, 419 words, 2805 bytes of&nbsp;<a href="https://www.lipsum.com/" title="Lorem Ipsum">Lorem Ipsum</a></p>
', N'Health-Insurance', N'/Content/Data/files/phong-kham-chan-doan-hinh-anh-bs-duong-xuan-thuc.jpg', CAST(356000 AS Decimal(18, 0)), N'12', 900, 0, CAST(N'2021-01-18T01:40:03.8176117+07:00' AS DateTimeOffset), N'admin', NULL, NULL)
INSERT [dbo].[InsurranceCategory] ([Id], [Name], [Description], [MetaTitle], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9ec4c651-1670-4c6b-8e70-001aa20d3684', N'Real estate insurance', N'Real estate insurance Real estate', N'Real-estate-insurance', CAST(N'2021-01-18T01:20:45.8206379+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[InsurranceCategory] ([Id], [Name], [Description], [MetaTitle], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd00cb1fb-3ee1-4105-bbee-1e8a93842176', N'Motorcycle insurance', N'Motorcycle insurance Motorcycle insurance', N'Motorcycle-insurance', CAST(N'2021-01-18T01:20:01.4117416+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[InsurranceCategory] ([Id], [Name], [Description], [MetaTitle], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'4ce0491b-17b0-49d9-b089-1ef74029f922', N'Health Insurance', N'Health Insurance Health Insurance Health Insurance', N'health-insurance', CAST(N'2021-01-10T16:49:27.2855259+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[InsurranceCategory] ([Id], [Name], [Description], [MetaTitle], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'bc6878e9-5529-4261-b145-ba2fc5d7a185', N'Life insurance', N'Life insurance Life insurance ', N'Life-insurance', CAST(N'2021-01-18T01:21:24.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T01:21:49.6713717+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Menu] ON 

INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'Home', N'/', 1, NULL, N'_self', CAST(N'2019-05-27T16:17:45.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2021-01-10T23:26:55.3876956+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'Introduce', N'/gioi-thieu', 2, NULL, N'_self', NULL, NULL, CAST(N'2021-01-10T23:27:08.0919353+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (3, N'News', N'/tin-tuc', 3, NULL, N'_self', NULL, NULL, CAST(N'2021-01-10T23:27:20.4403887+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (4, N'Insurrance', N'/tat-ca-san-pham', 4, NULL, N'_self', NULL, NULL, CAST(N'2021-01-10T23:27:34.8990192+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (5, N'Contact', N'#', 5, NULL, N'_self', NULL, NULL, CAST(N'2021-01-10T23:27:46.7779302+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (15, N'Contact information', N'#Contact', 1, 5, N'_self', NULL, NULL, CAST(N'2021-01-10T23:27:57.2190303+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (16, N'Feedback', N'/gop-y', 2, 5, N'_self', NULL, NULL, CAST(N'2021-01-10T23:28:13.6768514+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (18, N'Feedback from customers', N'/phan-hoi-y-kien-khach-hang', 3, 5, N'_self', NULL, NULL, CAST(N'2021-01-10T23:28:27.1752033+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (20, N'Khuyến mãi', N'/loai-tin-tuc/khuyen-mai/a2b988e6-9053-4c9d-b6fb-5ade0e050d18', 1, 3, N'_self', CAST(N'2019-06-09T17:13:06.0990506+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 1)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (21, N'Event', N'/loai-tin-tuc/su-kien/9d1fdd2c-e06d-402b-87de-f8746537bdbf', 2, 3, N'_self', CAST(N'2019-06-09T17:18:30.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T00:53:36.7956369+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Menu] ([Id], [MenuName], [Link], [DisplayOrder], [ParentId], [Target], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (22, N'Customer care', N'/loai-tin-tuc/cham-soc-khach-hang/c787ffc1-f333-484e-b176-c76d5c3d85a7', 3, 3, N'_self', CAST(N'2019-06-09T17:20:35.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T00:53:57.4164310+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f11b09ac-0959-4d99-a18e-1b4a3739f310', N'WHITE VALENTINE TRẮNG - ĐÁP TRẢ YÊU THƯƠNG - GIẢM GIÁ LÊN ĐẾN 15%', N'Dường như ngày Valentine Đỏ (14/2) ngọt ngào vẫn chưa đủ với những con tim đang yêu.Vì vậy, Valentine Trắng để tỏ tình cảm với người thương yêu mình.', N'white-valentine-trang-dap-tra-yeu-thuong-giam-gia-len-den-15', N'<p style="text-align:center"><strong>WHITE VALENTINE DAY - Đ&Aacute;P TRẢ Y&Ecirc;U THƯƠNG</strong></p>

<p style="text-align:center">___________________________</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="" src="https://streetstyle.vn/images/companies/1/14.3%20wed%20%281%29.png" style="width:500px" /></p>

<p>&nbsp;</p>

<p>Dường như ng&agrave;y&nbsp;Valentine Đỏ (14/2)&nbsp;ngọt ng&agrave;o vẫn chưa đủ với những con tim đang y&ecirc;u.V&igrave; vậy,&nbsp;Valentine Trắng&nbsp;để tỏ t&igrave;nh cảm với người thương y&ecirc;u m&igrave;nh.<br />
<br />
Hiểu được điều đ&oacute;&nbsp;<strong>STREETSTYLE.VN</strong>&nbsp;mang đến chương tr&igrave;nh&nbsp;&quot;Đ&Aacute;P TRẢ Y&Ecirc;U THƯƠNG&quot;&nbsp;như sau:<br />
<br />
<strong>GIẢM 5%</strong>&nbsp;khi mua&nbsp;<strong>1&nbsp;Đ&Ocirc;I GI&Agrave;Y</strong><br />
<br />
<strong>GIẢM 10%</strong>&nbsp;khi mua&nbsp;<strong>2 Đ&Ocirc;I GI&Agrave;Y TRỞ L&Ecirc;N</strong>&nbsp;+&nbsp;<strong>FREESHIP.</strong><br />
<br />
<strong>LƯU &Yacute; :</strong>&nbsp;<strong>CỘNG DỒN TH&Ecirc;M % T&Iacute;CH LŨY CỦA TH&Agrave;NH VI&Ecirc;N</strong><br />
<br />
&Aacute;p dụng cho c&aacute;c bạn mua&nbsp;<strong>ONLINE</strong>&nbsp;c&aacute;c sản phẩm sau đ&acirc;y:</p>

<p><br />
<strong>VANS OLD SHOOL ALL WHITE ; FILA ALL WHITE v&agrave; STANMITH ALL WHITE.</strong><br />
<br />
<strong>THỜI GIAN DIỄN RA:&nbsp;13/03/2019 - 15/03/2019.</strong><br />
<br />
NHANH TAY ĐẶT H&Agrave;NG NGAY&nbsp;để&nbsp;NHẬN NGAY ƯU Đ&Atilde;I STREETSTYLE.VN&nbsp;v&agrave; đ&aacute;p trả lại t&igrave;nh y&ecirc;u của người y&ecirc;u m&igrave;nh nh&eacute; c&aacute;c bạn eyyyyy.</p>
', N'/Content/Data/files/14_3%20wed%20(1).png', N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:46:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T22:49:31.9041970+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'0dee53ce-3b1c-49be-a043-4257239c996f', N'Insurance premium revenue for the whole market in 2020 is estimated to increase by 17%.', N'Insurance premium revenue for the whole market in 2020 is estimated to increase by 17%.', N'A-c-t', N'<p>According to data from the General Statistics Office, by 2020, the insurance business will develop stably and safely in the context of complicated epidemics.</p>

<p>Insurance premium revenue in the fourth quarter of 2020 was estimated to increase by 16% over the same period last year, of which insurance premium revenue in life increased by 20%, non-life insurance by 7%; It is estimated that the whole year 2020 premium revenue of the whole insurance market will increase by 17% over the previous year, of which insurance premium revenue in the life sector will increase by 21%; non-life insurance increased by 7%.</p>

<p>By the end of November 2020, the market had 69 insurance businesses, including 18 life insurers, 31 non-life insurers, 2 reinsurance businesses and 18 environmental enterprises. insurance circles; total corporate assets reached 542.8 trillion dong, up 20% over the same period in 2019; insurance businesses investing back into the economy reached 449.4 trillion dong, up 22%.</p>
', N'/Content/Data/files/bao-hiem_165997_thumb.jpg', N'c787ffc1-f333-484e-b176-c76d5c3d85a7', NULL, N'y-u-i', NULL, NULL, NULL, NULL, CAST(N'2019-06-06T12:57:16.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T01:07:14.4520965+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8d6c4773-7233-49d1-8902-524bc4bc6238', N'Low interest rates are the biggest challenge for the insurance industry in 2021', N'Low interest rates are the biggest challenge for the insurance industry in 2021', N'Lai-suat-thap', N'<p>SSI Research assessed that the low interest rate environment will make investment profits difficult and reduce the profits of insurance companies because most of the investment portfolio of insurance companies is in bank deposits and Government bonds.</p>

<p>Better fee revenue growth in 2021</p>

<p>SSI Research expects higher growth of original insurance premium revenue by 2021 for both the life and non-life insurance segments by 22% and 10-12% yoy, respectively. This estimate is based on 2 points of view.</p>

<p>The first is that the demand for life insurance products is decent and thanks to newly signed exclusive banca contracts, insurance companies can access a larger pool of potential customers. In the event that Covid-19 epidemic is controlled and there is no social gap, sales activities (meetings, customer conferences ...) will be able to recover to the level before Covid, promoting activities. sales are stronger.</p>

<p>Second, economic recovery promotes non-life insurance. SSI Research expects GDP growth to return to 6.5% by 2021 as economic activity recovers. Consequently, cargo, aviation, travel and credit security will be able to achieve growth before Covid.</p>

<p>The expansion of managed assets (AUM) will be the main driver of profit growth for insurance companies in 2021.</p>

<p>SSI Research does not expect earnings growth to be equivalent to premium revenue growth, as earnings-enhancing factors in 2020 are active equity markets and improved claims rates may not be repeated. 2021. The 2021 average interest rate is estimated to be 75-85 bps lower than the 2020 average, so growth in financial income will be entirely dependent on AUM expansion.</p>

<p>Some structural changes will continue in 2021</p>

<p>SSI Research estimates that online sales will increase. However, this channel is only suitable for certain segments (personal accident insurance, compulsory motorcycle insurance, travel insurance). In addition, insurance companies can develop a range of health insurance products with more options and to satisfy a wider range of customers.</p>

<p>Risks from low interest rate environment and rising reinsurance costs</p>

<p>A low interest rate environment will make investment returns difficult and reduce the profits of insurance companies as the majority of the insurance companies&#39; portfolios are in bank deposits and government bonds. In addition, if government bond yields fall further, the burden will be on technical provisions for life insurance - negatively affecting accounting returns.</p>

<p>Increasing reinsurance costs: In recent years, high losses by Vietnamese insurance companies, especially in the property insurance sector, have prompted international reinsurers to increase reinsurance prices.</p>

<p>SSI Research believes that this trend will continue in the medium term. An important consequence of this is that insurers may not be able to maintain treaty contracts and are forced to switch to facultative contracts, affecting their capacity to non-life insurance.</p>
', N'/Content/Data/files/ssi-du-bao-bao-hiem-2021_84866_thumb.png', N'9d1fdd2c-e06d-402b-87de-f8746537bdbf', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:44:24.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T01:05:14.1766131+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'bf7bbebb-a4e8-41fb-b1df-7a3492d72d57', N'Shop off lúc 19h ngày 15/12 cổ vũ đội tuyển Việt Nam', N'\ Shop Off Từ 19h Đêm Nay \  vì... đêm nay "Bão" lớn sẽ về  #19h30 tối nay, #No_Job, #No_Love, #No_problem, tất cả cùng hướng về đội tuyển Việt Nam cùng trận cuối cùng tại AFFcup2018', N'shop-off-luc-19h-ngay-15-12-co-vu-doi-tuyen-viet-nam', N'<p>\ Shop Off Từ 19h Đ&ecirc;m Nay \</p>

<p>v&igrave;... đ&ecirc;m nay &quot;B&atilde;o&quot; lớn sẽ về</p>

<p><a href="https://www.facebook.com/hashtag/19h30?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#19h30</a>&nbsp;tối nay,&nbsp;<a href="https://www.facebook.com/hashtag/no_job?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#No_Job</a>,&nbsp;<a href="https://www.facebook.com/hashtag/no_love?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#No_Love</a>,&nbsp;<a href="https://www.facebook.com/hashtag/no_problem?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARAYOHxm0WFgxLVlwNi-5p3Td44BN80n_ERRfAIJmJVdgm_dkZlSGel0k1WqM5Q5xs-DsPxGCzwoOmribhLbkyBpsLwMQkEmL3JCIAnZybt-gpjwwYgLVCwAoTKtg0pdz8ovqFVWQKXWIBf__Qj-ghCWLCXjd62PncKtLxLcbbGTmkElKPIoBWP3rwzq9_WCGkz5nWRPWeWmQvt6qKHQlt-TAKWVMfdCrgIs7HWWmR2xULsGP7Grq8qvUpru4hhDqjmm1gMOyrWew31t-WKSTbHpLqWk8tB7R0sAwm7Q3zmxezgGT9_r8beVIdzDPQM3zyBdI-5RIegzEzyK_WBYkX4CsmC-1P_SXdNb-Qkae-EwAzTPwTFXriC2VNWrgMkhL3UWkwDLMlw4hlItfYnIb1hxRHRWfPY5SDHaEU63qf7opmo&amp;__tn__=%2ANK-R">#No_problem</a>, tất cả c&ugrave;ng hướng về đội tuyển Việt Nam c&ugrave;ng trận cuối c&ugrave;ng tại AFFcup2018</p>

<p>&nbsp;</p>

<p style="text-align:center"><img alt="" src="https://streetstyle.vn/images/companies/1/Vi%E1%BB%87t%20Nam%20v%C3%B4%20%C4%91%E1%BB%8Bch%20AFFcup%202018.jpg" style="width:500px" /></p>

<p>Nhớ m&atilde;i cảm gi&aacute;c đ&oacute; từ năm 2008&nbsp;<img alt="" src="https://static.xx.fbcdn.net/images/emoji.php/v9/tf3/1.5/16/2764.png" style="height:16px; width:16px" /></p>

<p>Ch&uacute;c Việt Nam đ&ecirc;m nay kh&ocirc;ng ngủ như 10 năm trước&nbsp;</p>
', N'/Content/Data/files/Vi%E1%BB%87t%20Nam%20v%C3%B4%20%C4%91%E1%BB%8Bch%20AFFcup%202018.jpg', N'9d1fdd2c-e06d-402b-87de-f8746537bdbf', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:48:05.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T22:49:00.2609067+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'5bfd24f1-e085-49ff-abbd-e6bf4887042f', N'TƯNG BỪNG CHÀO HÈ', N'Khi mua hàng tại StreetStyle.vn sẽ được giảm giá 10% giày và 15% cho quần áo.  Áp dụng cho cả ONLINE và OFFLINE.', N'tung-bung-chao-he-freestyle', N'<p><strong>StreetStyle.vn xin gửi đến c&aacute;c bạn chương tr&igrave;nh&nbsp;TƯNG BỪNG CH&Agrave;O H&Egrave;&nbsp;như sau:</strong></p>

<p><img alt="" src="https://streetstyle.vn/images/companies/1/ch%C3%A0o%20h%C3%A8.png" style="width:500px" /></p>

<p>Khi mua h&agrave;ng tại&nbsp;<strong>StreetStyle.vn</strong>&nbsp;sẽ được giảm gi&aacute; 10% gi&agrave;y v&agrave; 15% cho quần &aacute;o.</p>

<p>&Aacute;p dụng cho cả&nbsp;ONLINE&nbsp;v&agrave;&nbsp;OFFLINE.<br />
<br />
Chương tr&igrave;nh k&eacute;o d&agrave;i&nbsp;<strong>từ&nbsp;21/05/2019 đến hết 30/5/2019</strong><br />
<br />
C&aacute;c bạn xem ch&iacute;nh s&aacute;ch TH&Agrave;NH VI&Ecirc;N của shop tại đ&acirc;y nh&eacute;:&nbsp;<a href="https://streetstyle.vn/chuong-trinh-khuyen-mai/sinh-nhat-ban-duoc-giam-10-15.html?fbclid=IwAR0azgbRV5YdXbt8yCx2z0XRtoplK4cS-YPkJH3E8PO0DtiBC0Hx3Gof6xA">https://streetstyle.vn/chuong-trinh-khuyen-mai/sinh-nhat-ban-duoc-giam-10-15.html?fbclid=IwAR0azgbRV5YdXbt8yCx2z0XRtoplK4cS-YPkJH3E8PO0DtiBC0Hx3Gof6xA</a><br />
<br />
Chương tr&igrave;nh Freeship COD TO&Agrave;N QUỐC với đơn h&agrave;ng từ 500k. V&agrave; qu&agrave; tặng vớ StreetStyle, m&oacute;c kho&aacute; sneaker k&egrave;m gi&agrave;y từ 500k vẫn được &aacute;p dụng b&igrave;nh thường.<br />
<br />
Cảm ơn c&aacute;c bạn gần xa đ&atilde; lu&ocirc;n đồng h&agrave;nh v&agrave; ủng hộ&nbsp;<strong>StreetStyle.vn</strong>&nbsp;trong suốt thời gian qua.</p>
', N'/Content/Data/files/ch%C3%A0o%20h%C3%A8.png', N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', NULL, N'tung-bung-chao-he-freestyle', NULL, NULL, NULL, NULL, CAST(N'2019-06-07T22:41:28.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T22:42:54.6196845+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[News] ([Id], [Name], [Summary], [MetaTitle], [Description], [UrlImage], [NewsCategoryId], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [ViewCount], [Tag], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'6e3a0fa5-b167-45e2-9039-fd4debea35e3', N'Tổng hợp mẹo bảo quản giày vào mùa mưa', N'Mùa mưa chắc hẳn là  kẻ thù lớn nhất của những đôi sneaker, nhất là tại Việt Nam khi mà thời tiết thay đổi thất thường lúc mưa lúc nắng không biết đâu mà lần. Và đặc biệt những cơn mưa dù là nhỏ đi nữa cũng đủ làm cho đôi giày của bạn vấy bẩn (nhất là những đôi giày trắng) và có mùi hôi khó chịu nếu không vệ sinh đúng cách và kịp thời.', N'tong-hop-meo-bao-quan-giay-vao-mua-mua', N'<p>M&ugrave;a mưa chắc hẳn l&agrave;&nbsp; kẻ th&ugrave; lớn nhất của những đ&ocirc;i sneaker, nhất l&agrave; tại Việt Nam khi m&agrave; thời tiết thay đổi thất thường l&uacute;c mưa l&uacute;c nắng kh&ocirc;ng biết đ&acirc;u m&agrave; lần. V&agrave; đặc biệt những cơn mưa d&ugrave; l&agrave; nhỏ đi nữa cũng đủ l&agrave;m cho đ&ocirc;i gi&agrave;y của bạn vấy bẩn (nhất l&agrave; những đ&ocirc;i gi&agrave;y trắng) v&agrave; c&oacute; m&ugrave;i h&ocirc;i kh&oacute; chịu nếu kh&ocirc;ng vệ sinh đ&uacute;ng c&aacute;ch v&agrave; kịp thời.</p>

<p>Kh&oacute; khăn l&agrave; thế nhưng những cơn mưa kh&ocirc;ng thể giết chết nềm ham th&iacute;ch với những đ&ocirc;i gi&agrave;y của ch&uacute;ng ta phải kh&ocirc;ng n&agrave;o? Nếu bạn vẫn muốn diện sneaker v&agrave;o m&ugrave;a mưa n&agrave;y th&igrave; h&atilde;y &aacute;p dụng ngay những mẹo sau của&nbsp;<strong><a href="https://www.facebook.com/StreetStyleStorevn/?ref=br_rs">StreetStyle.vn</a></strong>&nbsp;nh&eacute;.</p>

<p><strong>1. Hạn chế mang gi&agrave;y l&agrave;m bằng da lộn</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/rain-shoes-1519620455.jpg" style="width:600px" /></strong></p>

<p>Trong số c&aacute;c chất liệu sử dụng để l&agrave;m sneaker th&igrave; kẻ th&ugrave; lớn nhất của nước ch&iacute;nh l&agrave; da lộn. Khi tiếp x&uacute;c với nước, bề mặt da lộn rất dễ bị bị x&ugrave; l&ocirc;ng, kh&ocirc;ng th&igrave; cũng cứng v&agrave; bay m&agrave;u. &Ocirc;ng b&agrave; ta c&oacute; c&acirc;u &ldquo;ph&ograve;ng bệnh hơn chữa bệnh&rdquo;, thay v&igrave; phải đắng đo l&agrave;m sao để giữ cho gi&agrave;y da lộn sạch khi đi mưa th&igrave; ch&uacute;ng ta c&oacute; thể đơn giản l&agrave; kh&ocirc;ng mang ch&uacute;ng ra đường v&agrave;o m&ugrave;a n&agrave;y.</p>

<p><strong>2. N&ecirc;n chọn những đ&ocirc;i gi&agrave;y c&oacute; chất liệu Gore-Tex v&agrave; một số loại gi&agrave;y thiết kế chuy&ecirc;n dụng cho m&ugrave;a mưa</strong></p>

<p>Tr&aacute;i ngược với da lộn Gore-Tex l&agrave; một chất liệu đặc biệt với khả năng chống nước v&agrave; bền tuyệt đối, cho n&ecirc;n việc mang những đ&ocirc;i gi&agrave;y l&agrave;m bằng chất liệu n&agrave;y v&agrave;o những ng&agrave;y mưa sẽ kh&ocirc;ng phải l&agrave; vấn đề.</p>

<p>Tuy nhi&ecirc;n đừng lội nước qu&aacute; s&acirc;u v&igrave; gi&agrave;y kh&ocirc;ng thể chống nước khi nước lọt v&agrave;o cổ gi&agrave;y. V&agrave; tất nhi&ecirc;n nước kh&ocirc;ng v&agrave;o được th&igrave; cũng sẽ kh&ocirc;ng tho&aacute;t ra được, nếu để những đ&ocirc;i gi&agrave;y đ&oacute; v&ocirc; nước th&igrave; sẽ rất kh&oacute; chịu v&igrave; phải mang theo một đống nước tr&ecirc;n ch&acirc;n. Converse Rubber hay Vans trong bộ sưu tập All Weather MTE cũng l&agrave; một trong những lựa chọn hợp l&yacute; cho m&ugrave;a mưa ngập lụt n&agrave;y đấy.</p>

<p><strong>3. Sử dụng&nbsp;</strong><strong><a href="https://streetstyle.vn/xit-nano-protector-400ml-vi.html">chai xịt chống nước</a></strong><strong>:</strong></p>

<p style="text-align:center"><strong>&nbsp;<img alt="" src="https://streetstyle.vn/images/companies/1/IMG_1144.jpg" style="width:600px" /></strong></p>

<p>Tất nhi&ecirc;n kh&ocirc;ng phải đ&ocirc;i gi&agrave;y n&agrave;o cũng l&agrave;m bằng chất liệu chống nước v&agrave; cũng kh&ocirc;ng phải đ&ocirc;i gi&agrave;y chống nước n&agrave;o cũng l&agrave;m bạn y&ecirc;u th&iacute;ch v&agrave; sẵn s&agrave;n m&oacute;c hầu bao. Trong trường hợp gi&agrave;y của bạn kh&ocirc;ng c&oacute; khả năng chống nước th&igrave; việc sử dụng c&aacute;c loại xịt chống nước (phủ nano) l&agrave; việc cần l&agrave;m khi di chuyển dưới mưa. Một số sản phẩm nổi bật l&agrave; Repel của Jason Markk hay Crep Protect. Nguy&ecirc;n tắc hoạt động chung của c&aacute;c loại xịt n&agrave;y l&agrave; tạo ra một lớp m&agrave;ng nano bảo vệ cho lớp chất liệu b&ecirc;n dưới n&oacute;.</p>

<p>&nbsp;</p>

<p><strong>4. Lu&ocirc;n thủ sẵn D&eacute;p + t&uacute;i nilong:</strong></p>

<p style="text-align:center"><img alt="" src="https://streetstyle.vn/images/companies/1/d%C3%A9p.jpg" style="width:600px" /></p>

<p>D&ugrave; l&agrave; sản phẩm sịt chống nước của h&atilde;ng n&agrave;o đi nữa th&igrave; cũng c&oacute; một số khuyết điểm nhỏ. Chẳng hạn như kh&ocirc;ng thể chống nước ở phần cổ gi&agrave;y chẳng hạn. Trong trường hợp mưa qu&aacute; to, đi k&egrave;m với ngập lụt, h&atilde;y lu&ocirc;n thủ sẵn theo b&ecirc;n m&igrave;nh một đ&ocirc;i d&eacute;p nhẹ để thay ra khi cần v&agrave; d&ugrave;ng t&uacute;i nilong để bỏ gi&agrave;y v&agrave;o.</p>

<p><strong>5. Vệ sinh gi&agrave;y ngay sau khi đi mưa về</strong></p>

<p>Nếu như bạn đ&atilde; l&agrave;m mọi c&aacute;ch để bảo vệ đ&ocirc;i gi&agrave;y th&acirc;n y&ecirc;u của m&igrave;nh nhưng ch&uacute;ng vẫn bị bẩn th&igrave; điều bạn cần quan t&acirc;m tiếp theo đ&oacute; l&agrave; c&aacute;ch vệ sinh. Gi&agrave;y cần phải được v&ecirc; sinh ngay sau khi đi mưa về bởi v&igrave; nước mưa kh&aacute; bẩn, dễ d&agrave;ng g&acirc;y ẩm mốc cho đ&ocirc;i sneaker của bạn nếu để l&acirc;u. Đặc biệt l&agrave; c&aacute;c chất liệu primeknit hay flyknit rất thấm nước v&agrave; cực k&igrave; kị bị lội nước.</p>

<p>Nếu gi&agrave;y bạn sử dụng đế Boost hay bất cứ đế n&agrave;o kh&aacute;c m&agrave;u trắng, h&atilde;y nhanh ch&oacute;ng lau kh&ocirc; ch&uacute;ng v&igrave; gặp nước đế Boost rất dễ bị v&agrave;ng.</p>

<p>Sau khi vệ sinh xong h&atilde;y phơi gi&agrave;y nơi tho&aacute;ng m&aacute;t để gi&agrave;y mau kh&ocirc;, tuyệt đối kh&ocirc;ng phơi dưới nắng v&igrave; nắng sẽ l&agrave;m hư chất liệu đ&ocirc;i gi&agrave;y của bạn (thật ra th&igrave; m&ugrave;a mưa cũng chả mấy khi c&oacute; nắng).</p>

<p><strong>6. Bảo quản gi&agrave;y ở nơi kh&ocirc; r&aacute;o, tho&aacute;ng m&aacute;t</strong></p>

<p>Kh&ocirc;ng chỉ c&oacute; nước mưa m&agrave; những nơi tối, thiếu &aacute;nh s&aacute;ng hoặc ẩm ướt trong nh&agrave; cũng l&agrave; một trong những nguy&ecirc;n nh&acirc;n khiến đ&ocirc;i gi&agrave;y y&ecirc;u dấu của bạn mau ch&oacute;ng &ldquo;xuống cấp&rdquo;. Kh&ocirc;ng những thế, v&agrave;o những ng&agrave;y mưa sẽ c&oacute; nhiều nơi trong nh&agrave; bạn trở n&ecirc;n ẩm hơn, c&aacute;c bạn cần ch&uacute; &yacute; thật cẩn thận để lựa chọn nơi để gi&agrave;y v&agrave;o m&ugrave;a n&agrave;y. H&atilde;y tr&aacute;nh xa những chỗ bị ngập hoặc dột ra v&igrave; đ&oacute; l&agrave; c&aacute;ch nhanh nhất để ph&aacute; hỏng đ&ocirc;i gi&agrave;y của c&aacute;c bạn.</p>
', N'/Content/Data/files/rain-shoes-1519620455.jpg', N'c787ffc1-f333-484e-b176-c76d5c3d85a7', NULL, NULL, NULL, NULL, NULL, NULL, CAST(N'2019-06-06T13:06:58.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-07T21:37:21.6947954+07:00' AS DateTimeOffset), N'admin', 1)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a2b988e6-9053-4c9d-b6fb-5ade0e050d18', N'Highlights', N'High-lights', NULL, 1, N'High-lights', N'High-lights', CAST(N'2019-06-06T12:35:39.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T01:01:40.9382736+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c787ffc1-f333-484e-b176-c76d5c3d85a7', N'Customer care', N'cham-soc-khach-hang', NULL, 3, N'cham-soc-khach-hang', N'cham-soc-khach-hang', CAST(N'2019-06-06T12:36:29.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T01:00:40.3050277+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[NewsCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9d1fdd2c-e06d-402b-87de-f8746537bdbf', N'Event', N'su-kien', NULL, 2, N'su-kien', N'su-kien', CAST(N'2019-06-06T12:36:06.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2021-01-18T01:00:49.1073186+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'de421815-26ec-4f6f-8b19-51bb1b944319', N'34f97ad8-b22c-43ef-8e0a-9205115e3a9a', N'Đinh Thành Nghĩa', N'0988944608', N'33 Xô Viết Nghệ Tĩnh, Hải Châu, Đà Nẵng', N'dtnghia2510@gmail.com', 1, CAST(N'2019-06-11T15:23:01.1546756+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[Order] ([Id], [UserId], [ShipName], [ShipPhone], [ShipAddress], [ShipEmail], [Status], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'bde109ba-5890-4e61-8051-e0d04d8d352e', N'34f97ad8-b22c-43ef-8e0a-9205115e3a9a', N'Đinh Thành Nghĩa', N'0988944608', N'33 Xô Viết Nghệ Tĩnh, Hải Châu, Đà Nẵng', N'dtnghia2510@gmail.com', 1, CAST(N'2019-06-11T16:09:58.9518950+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'79ecab79-012d-4a7a-896d-3ea453a7d4ec', N'bde109ba-5890-4e61-8051-e0d04d8d352e', 1, CAST(1750000 AS Decimal(18, 0)), CAST(N'2019-06-11T16:09:59.2052553+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'de421815-26ec-4f6f-8b19-51bb1b944319', 3, CAST(199000 AS Decimal(18, 0)), CAST(N'2019-06-11T15:23:01.3683569+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[OrderDetail] ([ProductId], [OrderId], [Quantity], [Price], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'bde109ba-5890-4e61-8051-e0d04d8d352e', 2, CAST(199000 AS Decimal(18, 0)), CAST(N'2019-06-11T16:09:59.1683841+07:00' AS DateTimeOffset), N'nghia', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8cf42ce1-6f0d-4d97-9b1d-03cf821bf39e', N'REEBOK FLOATRIDE RUN FLEXWEAVE', NULL, N'reebok-floatride-run-flexweave', N'<h3>Materials</h3>

<p>Chất liệu: Th&acirc;n giầy sử dụng c&ocirc;ng nghệ Flexweave bền tăng cường khả năng tho&aacute;ng kh&iacute;, độ ổn định v&agrave; linh hoạt</p>

<h3>Fit</h3>

<p>Best for: Long distance runs, including marathons, half marathons, 10Ks</p>

<h3>Technology</h3>

<p>Đế gi&agrave;y sử dụng c&ocirc;ng nghệ m&uacute;t xốp Floatride đem lại cảm gi&aacute;c &ecirc;m nhẹ, đ&aacute;p ứng mọi y&ecirc;u cầu của người sử dụng</p>

<h3>Product Code</h3>

<p>FLOATRIDE RUN FLEXWEAVE_M</p>
', N'/Content/Data/files/cn5237_fsl_ecom.jpg', CAST(3590000 AS Decimal(18, 0)), NULL, 0, 5, N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Chạy nhanh hơn, chạy xa hơn với công nghệ Floatride Run và Fleaxweave (TM)', NULL, N'reebok-floatride-run-flexweave', NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:48:56.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-09T17:57:48.9485071+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'836c11c8-c252-45b6-9604-08de7011869a', N'Converse Jack Purcell Leather', NULL, N'converse-jack-purcell-leather', N'<p>Kiểu d&aacute;ng Jack Purcell cổ điển với tone m&agrave;u All-White thanh lịch, thời thượng, đặc biệt hơn l&agrave; chất liệu da cao cấp bền bỉ để bạn dễ d&agrave;ng vệ sinh. Mọi sự kết hợp sẽ trở n&ecirc;n dễ d&agrave;ng hơn khi bạn sở hữu trong tủ gi&agrave;y của m&igrave;nh một item như thế n&agrave;y nh&eacute;!</p>
', N'/Content/Data/files/165664C.jpg', CAST(2000000 AS Decimal(18, 0)), NULL, 0, 5, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'SKU: 164225C, Chất liệu: Da, Màu sắc: Trắng', NULL, N'converse-jack-purcell-leather', N'converse-jack-purcell-leather', NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:17:43.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-09T17:57:59.1238850+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'e8ab3637-5fa0-4b12-93ce-0e11bde67845', N'Jordan 4 ST2030', NULL, N'jordan-4-st2030', N'<p>GI&Agrave;Y CẶP Đ&Ocirc;I THỂ THAO JORDAN 4 ST2030 - C&oacute; rất nhiều c&aacute;ch để những người đang y&ecirc;u thể hiện t&igrave;nh cảm cho nhau. Trong đ&oacute;, đi gi&agrave;y couple gi&agrave;y cặp gi&agrave;y đ&ocirc;i l&agrave; một c&aacute;ch rất hay. Vừa thể hiện cho mọi người thấy rằng hai bạn l&agrave; một cặp, vừa thể hiện được sự đồng điệu của cả hai khi tr&ecirc;n người mang một m&oacute;n đồ chung. Hai người mang một đ&ocirc;i gi&agrave;y giống nhau giống như nguyện ước được đi c&ugrave;ng nhau tới cuối chặng đường đời.</p>
', N'/Content/Client/images/abt-1.jpg', CAST(299000 AS Decimal(18, 0)), NULL, 0, 20, N'de613250-d551-435b-9613-2f67164a78f6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-06-03T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:29:41.8098390+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'07b8ca65-0fa3-4aad-aace-1944c6740869', N'Converse Chuck Taylor', NULL, N'converse-chuck-taylor', N'<p>Phi&ecirc;n bản Chuck Taylor cổ thấp đầy nữ t&iacute;nh với tone m&agrave;u xanh dịu nhẹ. Đặc biệt sự đồng bộ đến từ phần th&acirc;n gi&agrave;y v&agrave; viền xung quanh đế gi&agrave;y cho bạn một item thời trang, nổi bật. Chất liệu Textile mềm nhẹ, được dệt tỉ mỉ gi&uacute;p bạn c&oacute; được sự th&ocirc;ng tho&aacute;ng, thoải m&aacute;i</p>
', N'/Content/Data/files/564345C-DRAKE-650x650.jpg', CAST(1300000 AS Decimal(18, 0)), NULL, 0, 5, N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'SKU: 564345C, Chất liệu: Textile,  Màu sắc: Xanh', NULL, N'converse-chuck-taylor', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:21:03.1376893+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'79ecab79-012d-4a7a-896d-3ea453a7d4ec', N'Vans Oldskool Mash Up Stickers', NULL, N'vans-oldskool-mash-up-stickers', N'<p>Kiểu d&aacute;ng Old Skool kinh điển với hai đường lượn s&oacute;ng trắng ở hai b&ecirc;n th&acirc;n gi&agrave;y c&ugrave;ng họa tiết Sticks Vans bắt mắt v&agrave; ngộ nghĩnh mang đến sản phẩm nổi bật. Sự đa dạng về m&agrave;u sắc cũng như thiết kế dễ mang, item chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn phải kh&oacute; khăn trong việc mix&amp;match.</p>
', N'/Content/Data/files/VN0A38G1VFV-DRAKE-650x650.jpg', CAST(1750000 AS Decimal(18, 0)), NULL, 0, 5, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'SKU: VN0A38G1VFV Chất liệu: Da lộn/Canvas Màu sắc: Stickers/True White', NULL, N'vans-oldskool-mash-up-stickers', N'vans-oldskool-mash-up-stickers', NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:29:41.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-11T18:52:54.9386662+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd22b1e54-b2d1-4375-86b7-41596036ab8c', N'Adidas X18.1 FG', NULL, N'adidas-x18.1-fg', N'<p>Gi&agrave;y b&oacute;ng đ&aacute; đinh cao Adidas X18.1 FG +M&agrave;u sắc : Xanh n&otilde;n chuối cực k&igrave; nổi bật ki ra s&acirc;n +Thiết kế : Cao su tổng hợp chất liệu si&ecirc;u nhẹ rất th&iacute;ch hợp cho cầu thủ c&oacute; lỗi chơi tốc độ cao, đinh FG bằng nhựa c&oacute; độ cao vừa phải gi&uacute;p b&aacute;m s&acirc;n cực tốt ,ngay cả trong điều kiện s&acirc;n ẩm ướt.</p>
', N'/Content/Client/images/abt-2.jpg', CAST(759000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-05-04T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:22:05.5690807+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'6af940c9-ab84-40f8-b433-42daec387bb9', N'Adidas EQT 2018', NULL, N'adidas-eqt-2018', N'<p>Gi&agrave;y Adidas EQT&nbsp;2018&nbsp;l&agrave; một trong những sản phẩm mới nhất kết hợp form d&aacute;ng của NMD đ&atilde; qu&aacute; th&agrave;nh c&ocirc;ng. Nếu bạn đang t&igrave;m kiếm một sản phẩm đ&aacute;p ứng được nhiều nhiệm vụ trong c&ugrave;ng một ng&agrave;y th&igrave; Adidas EQT l&agrave; một sản phẩm m&agrave; bạn kh&ocirc;ng n&ecirc;n bỏ qua bởi những yếu tố.<br />
Sự năng động trong kh&acirc;u thiết kế kết hợp sự tiện dụng tối đa cho kh&aacute;ch h&agrave;ng sử dụng. Chất liệu thun dệt thuần t&uacute;y đẹp mắt bền bỉ tho&aacute;ng kh&iacute; sẽ đem lại một trải nghiệm tuyệt vời khi sử dụng.</p>
', N'/Content/Client/images/abt-3.jpg', CAST(699000 AS Decimal(18, 0)), CAST(590000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, CAST(N'2019-06-04T11:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:20:48.2211555+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'510c5367-ff16-4646-9cd8-44770a7748d7', N'Adidas Tubular 2019', NULL, N'adidas-tubular-2019', N'<p>Thiết kế của gi&agrave;y adidas tubular dawn&nbsp;&ocirc;m trọn ph&ugrave; hợp với mọi b&agrave;n ch&acirc;n tạo cảm gi&aacute;c thoải m&aacute;i cho người sử dụng. Đế gi&agrave;y th&iacute;ch ứng với mọi địa h&igrave;nh.<br />
Loại gi&agrave;y: Original<br />
M&agrave;u sắc: x&aacute;m, đen</p>
', N'/Content/Client/images/shoes-1.png', CAST(599000 AS Decimal(18, 0)), CAST(499000 AS Decimal(18, 0)), 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-01T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:21:50.8355256+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'60f7f5f4-7b22-41ac-a8c0-7017a3b85aee', N'AHARY RUNNER', N'AHARY RUNNER_M', N'ahary-runner', N'<h3>Materials</h3>

<p>Chất liệu: Th&acirc;n gi&agrave;y được thiết kế với lớp lưới ngụy trang đem lại cảm gi&aacute;c tho&aacute;ng m&aacute;t tự nhi&ecirc;n v&agrave; thoải m&aacute;i</p>

<h3>Fit</h3>

<p>Designed for: 5K running, long walks, low-mileage training</p>

<h3>Technology</h3>

<p>Thiết kế gi&agrave;y cổ thấp gi&uacute;p người sử dụng tự do vận động v&ugrave;ng mắt c&aacute; ch&acirc;n v&agrave; chuyển động t&aacute;c nhanh ch&oacute;ng</p>

<h3>Product Code</h3>

<p>AHARY RUNNER_M</p>
', N'/Content/Data/files/cn5333_fsl_ecom.jpg', CAST(2150000 AS Decimal(18, 0)), NULL, 0, 5, N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Giầy chạy bộ tốc độ thấp với các chi tiết thiết kế tinh xảo', NULL, N'ahary-runner', N'ahary-runner', NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:46:31.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T12:49:39.5254072+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c042f922-9fd4-4a0e-8056-8e904cc5e5cf', N'Nike Air Zoom', NULL, N'nike-air-zoom-generation', N'<p>Nike Air Zoom &nbsp;đem đến một cảm gi&aacute;c mới lạ ho&agrave;n to&agrave;n so với c&aacute;c thế hệ tiền nhiệm trước đ&oacute; của Nike, với c&ocirc;ng nghệ chủ đạo l&agrave; sợi Dynamic Flywire, sẽ đe lại cảm gi&aacute;c thoải m&aacute;i v&agrave; độ vừa vặn tối đa, trong khi kiến tr&uacute;c thiết kế Flymesh ở phần upper gi&uacute;p tăng cường khả năng hỗ trợ mu b&agrave;n ch&acirc;n.<br />
Phần đế trong của gi&agrave;y thể thao Nike Air Zoom được tăng cường gấp ba lần mật độ bọt gi&uacute;p giảm &aacute;p lực trong những pha xoay ch&acirc;n, v&agrave; đem lại sự &ecirc;m &aacute;i, dễ chịu trong c&aacute;c hoạt động tập luyện thường ng&agrave;y.<br />
Đặc điểm nổi bật của d&ograve;ng&nbsp;gi&agrave;y thể thao&nbsp;Nike Air ch&iacute;nh l&agrave; b&iacute; mật nằm ở ph&iacute;a dưới gầm gi&agrave;y, đ&oacute; l&agrave; một t&uacute;i kh&iacute;, c&oacute; chức năng l&agrave;m giảm c&aacute;c t&aacute;c động mạnh l&ecirc;n đ&ocirc;i ch&acirc;n, đồng thời đem lại khả năng &ecirc;m &aacute;i, linh hoạt v&agrave; v&ocirc; c&ugrave;ng dễ chịu.</p>
', N'/Content/Client/images/shoes-2.png', CAST(699000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-05-30T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:22:33.0180693+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b14e06c8-8cd6-4c9c-b3a3-95ea614e799a', N'Nike Air Uptempo', NULL, N'nike-air-uptempo', N'<p>Gi&agrave;y thể thao Nike Air Uptempo , Varsity Red - một trong những mẫu gi&agrave;y được y&ecirc;u th&iacute;ch nhất ở thời điểm hiện tại. Mẫu Nike Air Uptempo đ&atilde; dần được Nike hồi sinh với cả phối m&agrave;u cũ v&agrave; mới. Tiếp nối cho c&aacute;c ph&aacute;t h&agrave;nh More Uptempo trước đ&acirc;y, Nike cho ra mắt phối m&agrave;u Bulls của d&ograve;ng gi&agrave;y với thiết kế hầm hố v&agrave; độc đ&aacute;o n&agrave;y.</p>
', N'/Content/Client/images/shoes-3.png', CAST(759000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-05-24T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:00.9496653+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'44a76484-6ac2-4d48-a5c7-97448c545ab0', N'New Balance 572', NULL, N'new-balance-572', N'<p>Với kiểu d&aacute;ng cổ điển, cấu tr&uacute;c gi&agrave;y được thiết kế mang lại cảm gi&aacute;c thoải m&aacute;i, lớp da cao cấp bao phủ upper, lỗ th&ocirc;ng hơi ở mũi gi&agrave;y c&oacute; t&aacute;c dụng gi&uacute;p đ&ocirc;i ch&acirc;n được th&ocirc;ng tho&aacute;ng&nbsp;c&ugrave;ng với phần đệm REVlite, đệm cổ gi&agrave;y v&agrave; outsole cao su với độ b&aacute;m tốt hơn, New Balance 572 l&agrave; mẫu gi&agrave;y kh&ocirc;ng thể bị đ&aacute;nh bại.</p>
', N'/Content/Data/files/442823965ba2ba421c8991433c31a3ac.jpg', CAST(3590000 AS Decimal(18, 0)), NULL, 0, 5, N'49df2e48-4b19-477c-a87b-aec64de21e48', N'New Balance 572 là mẫu giày mang thiết kế đẹp mắt, trẻ trung, có thể được xếp vào danh sách không bao giờ lỗi mốt của New Balance.', NULL, N'new-balance-572', N'new-balance-572', NULL, NULL, NULL, 1, NULL, CAST(N'2019-06-05T12:57:38.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T12:59:33.1304280+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'11b4d958-69e7-47b5-afe0-9f1b49e1b01e', N'Vans ComfyCush Era', NULL, N'vans-comfycush-era', N'<p>Ứng dụng c&ocirc;ng nghệ ComfyCush v&agrave;o đ&ocirc;i gi&agrave;y Vans Era c&oacute; phần đệm ở cổ ch&acirc;n. Đặc biệt l&agrave; sự kết hợp của 2 tone m&agrave;u tương phản V&agrave;ng - Xanh kh&aacute; nổi bật. Vans ComfyCush Era đ&atilde; mang đến cho người d&ugrave;ng một trải nghiệm kh&aacute;c biệt với trọng lượng v&ocirc; c&ugrave;ng nhẹ. Đặc biệt l&agrave; sự cải tiến to&agrave;n bộ nội thất b&ecirc;n trong đ&ocirc;i gi&agrave;y, gi&uacute;p bạn linh hoạt, nhẹ nh&agrave;ng hơn trong việc di chuyển.</p>
', N'/Content/Data/files/VN0A3WM9VNO-DRAKE-650x650.jpg', CAST(2200000 AS Decimal(18, 0)), NULL, 0, 5, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'SKU: VN0A3WM9VNO, Chất liệu: Vải Canvas, Màu sắc: Xanh/Vàng', NULL, N'vans-comfycush-era', N'vans-comfycush-era', NULL, 1, NULL, NULL, NULL, CAST(N'2019-06-05T12:44:24.6006977+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c9d85df8-6a73-4c5f-b10e-a7a73bd0e09a', N'Nike Vapor Max 2019', NULL, N'nike-vapor-max-2019', N'<p>Gi&agrave;y&nbsp;Nike Air VaporMax 2019&nbsp;<br />
Nguồn gốc:&nbsp;&nbsp; &nbsp;H&agrave;ng ch&iacute;nh h&atilde;ng<br />
H&atilde;ng sản xuất:&nbsp;&nbsp; &nbsp;Nike<br />
Mục đ&iacute;ch sử dụng:&nbsp;&nbsp; &nbsp;Gi&agrave;y đi h&agrave;ng ng&agrave;y, gi&agrave;y thể thao chạy bộ<br />
K&iacute;ch cỡ:&nbsp;&nbsp; &nbsp;36-45<br />
M&agrave;u sắc:&nbsp;&nbsp; &nbsp;Nhiều m&agrave;u<br />
T&igrave;nh trạng:&nbsp;&nbsp; &nbsp;Mới 100%, Full box<br />
M&atilde; sản phẩm&nbsp;&nbsp; &nbsp;&nbsp;#AR6631-400</p>
', N'/Content/Client/images/b-1.jpg', CAST(259000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2019-06-03T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:20.2008100+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'59ded37f-c008-4f40-9af6-c34691f826e2', N'LunarEpic Low Flyknit', NULL, N'lunar-epic-low-fly-knit-2', N'<p>Sock-Like Fit<br />
Vải Nike Flyknit được thiết kế để quấn ch&acirc;n của bạn như một c&aacute;i t&uacute;i cho một bộ v&eacute;t v&uacute; tự nhi&ecirc;n, vừa vặn với mọi cử động.<br />
Chuyển đổi Mượt<br />
Đệm đệm lunarlon l&agrave; một sự kết hợp của bọt mềm v&agrave; vững chắc gi&uacute;p hấp thụ t&aacute;c động v&agrave; tạo ra sự chuyển đổi từ g&oacute;t ch&acirc;n sang mượt.<br />
Nhắm mục ti&ecirc;u đệm<br />
Dựa tr&ecirc;n c&aacute;c điểm chịu &aacute;p lực của người chạy bộ khi di chuyển, đế ngo&agrave;i c&oacute; c&aacute;c khu vực đệm ở nơi bạn cần nhất.</p>
', N'/Content/Client/images/shoes-13.png', CAST(229000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-05-21T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:43.2620444+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'a410db7a-d414-41df-bad6-c6c636940977', N'Vans Anaheim Factory Style 73 DX', NULL, N'vans-anaheim-factory-style-73-dx-vn0a3wlqvtm', N'<p>Kiểu d&aacute;ng Old Skool kinh điển với hai đường lượn s&oacute;ng trắng ở hai b&ecirc;n th&acirc;n gi&agrave;y c&ugrave;ng họa tiết Sticks Vans bắt mắt v&agrave; ngộ nghĩnh mang đến sản phẩm nổi bật. Sự đa dạng về m&agrave;u sắc cũng như thiết kế dễ mang, item chắc chắn sẽ kh&ocirc;ng l&agrave;m bạn phải kh&oacute; khăn trong việc mix&amp;match.</p>
', N'/Content/Data/files/VN0A38G1VFV-DRAKE-650x650(1).jpg', CAST(1750000 AS Decimal(18, 0)), NULL, 0, 10, N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'SKU: VN0A38G1VFV Chất liệu: Da lộn/Canvas Màu sắc: Stickers/True White', NULL, N'van', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-08T12:03:57.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-13T13:34:21.3733579+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'90bff1e5-4b44-4d2c-813b-c94fdad898ff', N'Nike Air“Just Do It”', NULL, N'nike-air-max-just-do-it', N'<p>Nike ra mắt BST &ldquo;Just Do It&rdquo; chịu ảnh hưởng của loạt sản phẩm OFF-WHITE trước đ&acirc;y Ngay khi những h&igrave;nh ảnh đầu ti&ecirc;n của phi&ecirc;n bản n&agrave;y xuất hiện, đ&atilde; c&oacute; nhiều &yacute; kiến cho rằng thiết kế n&agrave;y chịu ảnh hưởng cả về m&agrave;u sắc lẫn những họa tiết từ c&aacute;c si&ecirc;u phẩm hợp t&aacute;c c&ugrave;ng OFF-WHITE ra mắt trước đ&acirc;y. C&acirc;u tagline &ldquo;JUST DO IT&rdquo; đặc trưng của h&atilde;ng được đặt ở kh&aacute; nhiều vị tr&iacute; tr&ecirc;n th&acirc;n gi&agrave;y, &aacute;p dụng theo phong c&aacute;ch m&agrave; Virgil Abloh từng sử dụng rất th&agrave;nh c&ocirc;ng.</p>
', N'/Content/Client/images/shoes-5.png', CAST(599000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-05-25T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:23:59.0556416+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1cdc746d-7b42-4666-baad-d3ca4411b2fe', N'Puma Tsugi Blaze', NULL, N'puma-tsugi-blaze', N'<p>C&aacute;c Tsugi Blaze evoKNIT t&iacute;nh năng độc đ&aacute;o lớp đ&uacute;c mềm, cũng như một g&oacute;t ch&acirc;n dệt m&aacute;u me, cung cấp hỗ trợ v&agrave; xung quanh một đan tr&ecirc;n với lớp phủ da lộn.&nbsp;Một thiết kế tr&ecirc;n m&agrave; l&agrave;m gi&agrave;y n&agrave;y ở lại đ&uacute;ng với Blaze ban đầu của Glory.&nbsp;C&aacute;c dụng cụ đi&ecirc;u khắc c&aacute;c t&iacute;nh năng của c&ocirc;ng nghệ Ignite, khiến n&oacute; trở th&agrave;nh sneaker ho&agrave;n hảo cho những người y&ecirc;u th&iacute;ch sự thoải m&aacute;i v&agrave; kiểu d&aacute;ng thời trang-forward.<br />
PUMA l&agrave; thương hiệu thể thao to&agrave;n cầu m&agrave; cầu ch&igrave; th&agrave;nh c&ocirc;ng ảnh hưởng từ thể thao, lối sống v&agrave; thời trang.&nbsp;quan điểm c&ocirc;ng nghiệp độc đ&aacute;o của PUMA mang lại những bất ngờ trong thể thao-lối sống gi&agrave;y d&eacute;p, quần &aacute;o v&agrave; phụ kiện, th&ocirc;ng qua đổi mới kỹ thuật v&agrave; thiết kế mang t&iacute;nh c&aacute;ch mạng.</p>
', N'/Content/Client/images/shoes-6.png', CAST(499000 AS Decimal(18, 0)), NULL, 0, 20, N'9f0de121-5036-4a23-a37e-176e1fab5ffc', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-05-26T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:24:12.1387702+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'cc41105a-fde4-4e45-b479-d84e35b6f6e2', N'Adidas Yeezy Super', NULL, N'adidas-yeezy-super-2019', N'<p>☘️&nbsp;M&atilde;:&nbsp;YB090</p>

<p>✔️&nbsp;Sản xuất: Made in Viet Nam</p>

<p>✔️&nbsp;Loại h&agrave;ng: H&agrave;ng xuất dư</p>

<p>✔️&nbsp;Mẫu m&atilde;: 100% so với Au</p>

<p>✔️&nbsp;Độ bền: 99% so với Au</p>

<p>✔️&nbsp;M&agrave;u sắc: X&aacute;m cam</p>

<p>✔️&nbsp;Size: 24 &ndash; 35</p>

<p>🎁🎁&nbsp;H&agrave;ng Full box</p>
', N'/Content/Client/images/shoes-7.png', CAST(999000 AS Decimal(18, 0)), NULL, 0, 20, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-05-28T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:31:53.5629762+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'c4ecf378-3f7a-42da-af1c-e16ba17e5b6b', N'Nike Air Force 1 Mid', NULL, N'nike-air-force-1-mid', N'<p>Gi&agrave;y Nike Air Force 1 Mid &#39;07<br />
Nguồn gốc:&nbsp;&nbsp; &nbsp;Ch&iacute;nh h&atilde;ng<br />
H&atilde;ng sản xuất:&nbsp;&nbsp; &nbsp;Nike<br />
Mục đ&iacute;ch sử dụng:&nbsp;&nbsp; &nbsp;Gi&agrave;y đi h&agrave;ng ng&agrave;y, gi&agrave;y thể thao chạy bộ<br />
K&iacute;ch cỡ:&nbsp;&nbsp; &nbsp;36-44<br />
M&agrave;u sắc:&nbsp;&nbsp; &nbsp;Nhiều m&agrave;u<br />
T&igrave;nh trạng:&nbsp;&nbsp; &nbsp;Mới 100%, Full box<br />
M&atilde; SP:&nbsp;&nbsp; &nbsp;#82NK007</p>
', N'/Content/Client/images/b-2.jpg', CAST(1190000 AS Decimal(18, 0)), NULL, 0, 20, N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, CAST(N'2019-06-02T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:24:28.7050123+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'73586220-5579-426b-b831-ed1f166ae0f1', N'YZY 350 hag f1', NULL, N'yzy-350-hag-f1', N'<p>✔️&nbsp;SALE UP TO 50%, Gi&aacute; chỉ từ&nbsp;<a href="https://www.facebook.com/hashtag/99k?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARC6Zuwvbt-7SRSHd4_YPzR_1MwWWIytadK0EgYFMHOIwVwffRwi8DARFAOwTc9miVfbucYhtoR_EwJHoLI1HElYBizL8g54o6EEzUgvdIcZkPTbpFu9HIpqBe4n632HmZxqiBiQkvkanyIdJsI0DQNLEVp2jPTEEWA-sZKotNNopjJKgfmMyKtmBOfe54cUP0iisvjMeKLH4KxE6KHBdgduEXMYC9pg_ckplnfqjOZTpBL_JjFaTe42EQnnoQPqXB43H5EOJD8tc1dT-RKOPZLhveU6C_67L4HxSX4LNV6lZkLq3fn_3WkCCSU_q7yocztr78rWPz8l2RyIUzghtFYtP2sU&amp;__tn__=%2ANK-R">#99k</a>&nbsp;Sale 20% tất cả c&aacute;c mẫu gi&agrave;y F1,SF,Rep<br />
✔️&nbsp;SALE Đồng gi&aacute; 99K v&agrave; 50% một số mẫu lẻ size<br />
✔️&nbsp;Gi&agrave;y cv đồng gi&aacute; 135K</p>
', N'/Content/Data/files/61847470_2070570656579794_6448383436297076736_n.jpg', CAST(199000 AS Decimal(18, 0)), CAST(99000 AS Decimal(18, 0)), 0, 6, N'f4e587a0-d114-4f30-946c-04c30e01b730', NULL, NULL, N'yzy-350-hag-f1', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:02:25.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T23:23:23.4662687+07:00' AS DateTimeOffset), N'nghia', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'7bcd2a38-03a1-4cee-be22-ef7a628acf27', N'Balenciaga triple S', NULL, N'balenciaga-triple-s', N'<p>Đế sạch, ph&acirc;n tầng t&aacute;ch đế r&otilde; r&agrave;ng. H&agrave;ng c&oacute; sẵn, full size nam nữ 36-44.</p>

<p>Kh&aacute;ch h&agrave;ng vui l&ograve;ng để lại size gi&agrave;y ở phần lưu &yacute; hoặc inbox với shop để được tư vấn nhiệt t&igrave;nh</p>
', N'/Content/Data/files/61847470_2070570656579794_6448383436297076736_n(1).jpg', CAST(950000 AS Decimal(18, 0)), CAST(850000 AS Decimal(18, 0)), 0, 9, N'4af55b5a-7ef5-4026-ae30-675149352730', NULL, NULL, N'balenciaga-triple-s', NULL, NULL, NULL, 1, NULL, NULL, CAST(N'2019-06-05T12:07:32.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-05T12:08:48.8321886+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Product] ([Id], [Name], [Code], [MetaTitle], [Description], [UrlImage], [Price], [PromotionPrice], [IncludeVAT], [Quantity], [ProductCategoryId], [Detail], [Warranty], [MetaKeywords], [MetaDescriptions], [TopHot], [IsNormalProduct2], [IsNormalProduct1], [IsNewProduct], [ViewCount], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'd2c573a6-7c30-49b7-8173-f1d3c18fe5bf', N'Puma Suede Leather', NULL, N'puma-suede-leather', N'<p>Gi&agrave;y Puma Suede Leather được thiết kế đẹp mắt, phổ biến từ l&acirc;u m&agrave; c&oacute; thể bắt gặp ở s&acirc;n b&oacute;ng rổ từ những năm 60, s&agrave;n hiphop những năm 90 v&agrave; nay l&agrave; tr&ecirc;n những vỉa h&egrave; phố. Đ&ocirc;i gi&agrave;y sử dụng chất liệu da lộn mềm mịn v&agrave; c&oacute; kiểu d&aacute;ng thể thao, được đ&aacute;nh gi&aacute; l&agrave; kiểu gi&agrave;y sneaker mang t&iacute;nh biểu tượng của thương hiệu Puma được duy tr&igrave; đến ng&agrave;y nay.</p>
', N'/Content/Client/images/shoes-8.png', CAST(1990000 AS Decimal(18, 0)), CAST(1290000 AS Decimal(18, 0)), 0, 20, N'9f0de121-5036-4a23-a37e-176e1fab5ffc', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, CAST(N'2019-04-24T15:18:33.0000000+07:00' AS DateTimeOffset), N'admin', CAST(N'2019-06-04T20:24:41.0788378+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f4e587a0-d114-4f30-946c-04c30e01b730', N'Adidas', N'adidas', NULL, 1, N'adidas', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'35f18486-b2b4-472e-9c90-071466e5bb2d', N'Converse', N'converse', NULL, 2, N'convers', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'9f0de121-5036-4a23-a37e-176e1fab5ffc', N'Puma', N'puma', NULL, 3, N'puma', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'de613250-d551-435b-9613-2f67164a78f6', N'Air Jordan', N'air-jordan', NULL, 4, N'jordan', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'4af55b5a-7ef5-4026-ae30-675149352730', N'Balenciaga', N'balenciaga', NULL, 5, N'balenciaga', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'185e17eb-86c3-4323-8faf-6fcbb2e7bd08', N'Reebok', N'reebok', NULL, 6, N'reebok', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'49df2e48-4b19-477c-a87b-aec64de21e48', N'New Balance', N'new-balance', NULL, 7, N'new balance', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1e1200ae-1d12-4306-92ac-b05ac0bcf8ec', N'Nike', N'nike', NULL, 8, N'nike', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[ProductCategory] ([Id], [Name], [MetaTitle], [ParentId], [DisplayOrder], [SeoTitle], [MetaKeywords], [MetaDescriptions], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'dc7469a5-a82d-4e56-863b-e2f6f1fcf15d', N'Vans', N'vans', NULL, 9, N'vans', NULL, NULL, NULL, N'admin', NULL, NULL, 0)
INSERT [dbo].[Registration_Insurance] ([Id], [InsurranceId], [UserId], [FullName], [DateOfBirth], [Address], [Phone], [Email], [LicensePlate], [RangeOfVehicle], [RegistrationDate], [ExpirationDate], [TotalMoney], [Avatar], [CMND], [Status], [RegistrationInsuranceCode], [ModifiedBy], [ModifiedOn]) VALUES (N'56fdd3fe-325d-4967-84d8-3802f3e77ccd', N'174c0af7-5959-4d33-8d4b-c13f9be8b75b', N'f6c9eba9-a724-4335-9165-7260f863a329', N'Le Quoc Mo', CAST(N'2021-01-28' AS Date), N'14 Le Coong', N'08684858485', N'dhuachutthoinhe123@gmail.com', NULL, NULL, CAST(N'2021-01-18 13:21:19.720' AS DateTime), CAST(N'2854-05-18 13:21:19.720' AS DateTime), 200000000, NULL, N'2513522665', N'Paid online', N'1/18/2021 1:21:19 PM2513522665200000000', NULL, NULL)
INSERT [dbo].[Registration_Insurance] ([Id], [InsurranceId], [UserId], [FullName], [DateOfBirth], [Address], [Phone], [Email], [LicensePlate], [RangeOfVehicle], [RegistrationDate], [ExpirationDate], [TotalMoney], [Avatar], [CMND], [Status], [RegistrationInsuranceCode], [ModifiedBy], [ModifiedOn]) VALUES (N'f99e334d-0489-484c-a202-6060e19b20a8', N'174c0af7-5959-4d33-8d4b-c13f9be8b75b', N'ec85004f-cd89-4d2f-b02b-910c6ee621f1', N'Le Bao', CAST(N'2021-01-18' AS Date), N'14 Le Cong', N'2512412514', N'duachutthoinhe1234@gmail.com', NULL, NULL, CAST(N'2021-01-18 15:26:41.263' AS DateTime), CAST(N'2854-05-18 15:28:33.667' AS DateTime), 400000000, NULL, N'8547125485', N'Paid online', N'1/18/2021 3:26:41 PM8547125485200000000', NULL, NULL)
INSERT [dbo].[Registration_Insurance] ([Id], [InsurranceId], [UserId], [FullName], [DateOfBirth], [Address], [Phone], [Email], [LicensePlate], [RangeOfVehicle], [RegistrationDate], [ExpirationDate], [TotalMoney], [Avatar], [CMND], [Status], [RegistrationInsuranceCode], [ModifiedBy], [ModifiedOn]) VALUES (N'8030d732-b8a8-489e-9ca0-ae41bf900ad4', NULL, NULL, N'Ngo Ba Kha', CAST(N'2021-01-16' AS Date), N'14 Le Duan', N'0868486885', N'quang@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, N'1251241258', N'Confirmed ', NULL, NULL, NULL)
INSERT [dbo].[Registration_Insurance] ([Id], [InsurranceId], [UserId], [FullName], [DateOfBirth], [Address], [Phone], [Email], [LicensePlate], [RangeOfVehicle], [RegistrationDate], [ExpirationDate], [TotalMoney], [Avatar], [CMND], [Status], [RegistrationInsuranceCode], [ModifiedBy], [ModifiedOn]) VALUES (N'c52beb6a-2280-4bb5-a1e4-ca335ee5768f', N'27e43e36-1def-4e2d-8ed7-c21956a76194', N'f6c9eba9-a724-4335-9165-7260f863a329', N'Bui The Toan', CAST(N'2021-01-16' AS Date), N'14 Doan Uan', N'0868486885', N'quang@gmail.com', NULL, NULL, CAST(N'2021-01-16 15:19:35.000' AS DateTime), CAST(N'2021-07-17 22:30:43.000' AS DateTime), 100000000, NULL, N'2512254855', N'Confirmed ', N'1/16/2021 3:19:35 PM251225485550000000', NULL, NULL)
INSERT [dbo].[Registration_Insurance] ([Id], [InsurranceId], [UserId], [FullName], [DateOfBirth], [Address], [Phone], [Email], [LicensePlate], [RangeOfVehicle], [RegistrationDate], [ExpirationDate], [TotalMoney], [Avatar], [CMND], [Status], [RegistrationInsuranceCode], [ModifiedBy], [ModifiedOn]) VALUES (N'8d1677d4-1c7d-4300-873b-da6bc210bd2a', N'27e43e36-1def-4e2d-8ed7-c21956a76194', N'f6c9eba9-a724-4335-9165-7260f863a329', N'Le Van Pham 123', CAST(N'2021-01-05' AS Date), N'14 Doan Uan', N'0868486885', N'duachutthoinhne123@gmail.com', NULL, NULL, CAST(N'2021-01-17 10:53:38.547' AS DateTime), CAST(N'2021-01-17 10:53:38.547' AS DateTime), 50000000, N'9999999', N'0868688585', N'Unconfimred', N'1/17/2021 10:53:38 AM086868858550000000', NULL, NULL)
INSERT [dbo].[Registration_Insurance] ([Id], [InsurranceId], [UserId], [FullName], [DateOfBirth], [Address], [Phone], [Email], [LicensePlate], [RangeOfVehicle], [RegistrationDate], [ExpirationDate], [TotalMoney], [Avatar], [CMND], [Status], [RegistrationInsuranceCode], [ModifiedBy], [ModifiedOn]) VALUES (N'b9608d30-e37e-4e0f-af1f-fe15b82a1b66', N'27e43e36-1def-4e2d-8ed7-c21956a76194', N'f6c9eba9-a724-4335-9165-7260f863a329', N'Le Van Pham', CAST(N'2021-01-18' AS Date), N'14 Doan Uan', N'0868486885', N'duachutthoinhne123@gmail.com', NULL, NULL, CAST(N'2021-01-17 10:59:53.480' AS DateTime), CAST(N'2021-01-17 10:59:53.480' AS DateTime), 50000000, N'9999999999999', N'0868486786', N'Unconfimred', N'1/17/2021 10:59:53 AM086848678650000000', NULL, NULL)
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'ADD_USER', N'Thêm User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_CREDENTIAL', N'Thêm Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_ROLE', N'Thêm Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'CREATE_USER_GROUP', N'Thêm UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_CREDENTIAL', N'Xóa Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_ROLE', N'Xóa Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER', N'Xóa User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'DELETE_USER_GROUP', N'Xóa UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'EDIT_USER', N'Cập nhật User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_CREDENTIAL', N'Cập nhật Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_ROLE', N'Cập nhật Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'UPDATE_USER_GROUP', N'Cập nhật UserGroup')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_CREDENTIAL', N'Xem Credential')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_LAYOUT', N'Xem giao diện')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_ROLE', N'Xem Role')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER', N'Xem User')
INSERT [dbo].[Role] ([Id], [Name]) VALUES (N'VIEW_USER_GROUP', N'Xem UserGroup')
SET IDENTITY_INSERT [dbo].[Slide] ON 

INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (1, N'/Content/Data/files/insurance-539659_1280.jpg', 1, NULL, NULL, NULL, N'admin', CAST(N'2021-01-18T02:09:28.2457344+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (2, N'/Content/Data/files/construction-2578410_1280.jpg', 2, NULL, NULL, NULL, N'admin', CAST(N'2021-01-18T02:08:20.9027229+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[Slide] ([Id], [UrlImage], [DisplayOrder], [Link], [Description], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (3, N'/Content/Data/files/doctor-563429_1920.jpg', 3, NULL, NULL, NULL, N'admin', CAST(N'2021-01-18T02:05:47.0329559+07:00' AS DateTimeOffset), N'admin', 0)
SET IDENTITY_INSERT [dbo].[Slide] OFF
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'b9c6d5c0-e616-40a0-9f04-202a371075b3', N'ADMIN', N'/Content/Data/files/banner2.jpg', N'admin', N'21232f297a57a5a743894a0e4a801fc3', N'21232f297a57a5a743894a0e4a801fc3', N'Davi', N'Store', NULL, N'nghia@donga.edu.vn', N'Đà Nẵng', CAST(N'2019-04-21T15:31:55.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T13:45:09.2794829+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'8c9d01c9-ecbd-40d1-b373-2a2a44673f08', N'MEMBER', N'/Content/Data/files/shoes-10.png', N'hung', N'202cb962ac59075b964b07152d234b70', N'202cb962ac59075b964b07152d234b70', N'Trần', N'Hùng', NULL, N'hung@donga.edu.vn', N'Đà Nẵng', CAST(N'2019-06-03T23:37:45.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-04T13:47:11.1203171+07:00' AS DateTimeOffset), N'admin', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'f6c9eba9-a724-4335-9165-7260f863a329', N'MEMBER', NULL, N'ngobakha', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Ngo Ba', N'Kha', NULL, N'ngobakha@gmail.com', N'14 Ngo Ba', CAST(N'2021-01-16T13:07:12.1358750+07:00' AS DateTimeOffset), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'ec85004f-cd89-4d2f-b02b-910c6ee621f1', N'MEMBER', NULL, N'lebao', N'25f9e794323b453885f5181f1b624d0b', N'25f9e794323b453885f5181f1b624d0b', N'Le ', N'Bao', NULL, N'duachutthoinhe1234@gmail.com', N'14 Le Duan', CAST(N'2021-01-18T15:25:24.3769808+07:00' AS DateTimeOffset), NULL, NULL, NULL, 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'34f97ad8-b22c-43ef-8e0a-9205115e3a9a', N'MEMBER', N'/Content/Data/files/te2.jpg', N'nghia', N'202cb962ac59075b964b07152d234b70', N'202cb962ac59075b964b07152d234b70', N'Thành', N'Đinh ', NULL, N'dt@gmail.com', N'399 Xô Viết Nghệ Tĩnh, Hải Châu, Đà Nẵng', CAST(N'2019-04-21T15:31:55.0000000+07:00' AS DateTimeOffset), NULL, CAST(N'2019-06-12T10:31:47.3301092+07:00' AS DateTimeOffset), N'nghia', 0)
INSERT [dbo].[User] ([Id], [GroupId], [AvatarUrl], [UserName], [Password], [ConfirmPassword], [FirstName], [LastName], [ResetPasswordCode], [Email], [Address], [CreatedOn], [CreatedBy], [ModifiedOn], [ModifiedBy], [IsDeleted]) VALUES (N'1c20141b-73a6-4c73-baea-d74b60b2b391', N'MOD', N'/Content/Data/files/te2.jpg', N'modifier1', N'202cb962ac59075b964b07152d234b70', N'202cb962ac59075b964b07152d234b70', N'Lê Văn', N'Bảo', NULL, N'qu@donga.edu.vn', N'Gia Lai', CAST(N'2019-06-13T14:26:05.3075907+07:00' AS DateTimeOffset), N'admin', NULL, NULL, 0)
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'ADMIN', N'Quản trị')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MEMBER', N'Thành viên')
INSERT [dbo].[UserGroup] ([Id], [Name]) VALUES (N'MOD', N'Moderitor')
ALTER TABLE [dbo].[ClaimInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClaimInsurance_Registration_Insurance] FOREIGN KEY([Registration_InsuranceId])
REFERENCES [dbo].[Registration_Insurance] ([Id])
GO
ALTER TABLE [dbo].[ClaimInsurance] CHECK CONSTRAINT [FK_ClaimInsurance_Registration_Insurance]
GO
ALTER TABLE [dbo].[ClaimInsurance]  WITH CHECK ADD  CONSTRAINT [FK_ClaimInsurance_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[ClaimInsurance] CHECK CONSTRAINT [FK_ClaimInsurance_User]
GO
ALTER TABLE [dbo].[Insurrance]  WITH CHECK ADD  CONSTRAINT [FK_Insurrance_InsurranceCategory] FOREIGN KEY([InsurranceCategoryId])
REFERENCES [dbo].[InsurranceCategory] ([Id])
GO
ALTER TABLE [dbo].[Insurrance] CHECK CONSTRAINT [FK_Insurrance_InsurranceCategory]
GO
ALTER TABLE [dbo].[News]  WITH CHECK ADD  CONSTRAINT [FK__Content__Categor__412EB0B6] FOREIGN KEY([NewsCategoryId])
REFERENCES [dbo].[NewsCategory] ([Id])
GO
ALTER TABLE [dbo].[News] CHECK CONSTRAINT [FK__Content__Categor__412EB0B6]
GO
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK__Product__Product__5070F446] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([Id])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK__Product__Product__5070F446]
GO
ALTER TABLE [dbo].[Registration_Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Insurance_Insurrance] FOREIGN KEY([InsurranceId])
REFERENCES [dbo].[Insurrance] ([Id])
GO
ALTER TABLE [dbo].[Registration_Insurance] CHECK CONSTRAINT [FK_Registration_Insurance_Insurrance]
GO
ALTER TABLE [dbo].[Registration_Insurance]  WITH CHECK ADD  CONSTRAINT [FK_Registration_Insurance_User] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([Id])
GO
ALTER TABLE [dbo].[Registration_Insurance] CHECK CONSTRAINT [FK_Registration_Insurance_User]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserGroup] FOREIGN KEY([GroupId])
REFERENCES [dbo].[UserGroup] ([Id])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserGroup]
GO
USE [master]
GO
ALTER DATABASE [InsurraceDB] SET  READ_WRITE 
GO
