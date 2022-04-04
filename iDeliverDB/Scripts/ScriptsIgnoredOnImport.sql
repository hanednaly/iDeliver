
CREATE TABLE [dbo].[Country](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryFlag] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](10) NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Country](
--	[ID] [int] IDENTITY(1,1) NOT NULL,
--	[Name] [nvarchar](50) NOT NULL,
--	[CountryFlag] [nvarchar](50) NULL,
--	[CountryCode] [nvarchar](10) NULL,
--	[CreationDate] [datetime] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[IsDeleted] [bit] NOT NULL,
-- CONSTRAINT [PK_tblCountry] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Enrolment](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[RoleID] [int] NOT NULL,
 CONSTRAINT [PK_tblEnrolments] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
 CONSTRAINT [UK_tblEnrolments] UNIQUE NONCLUSTERED 
(
	[UserID] ASC,
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Enrolment](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[UserID] [bigint] NOT NULL,
--	[RoleID] [int] NOT NULL,
-- CONSTRAINT [PK_tblEnrolments] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY],
-- CONSTRAINT [UK_tblEnrolments] UNIQUE NONCLUSTERED 
--(
--	[UserID] ASC,
--	[RoleID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Location](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[CountryID] [int] NOT NULL,
	[City] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Location](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[Address] [nvarchar](50) NULL,
--	[CountryID] [int] NOT NULL,
--	[City] [nvarchar](50) NULL,
--	[IsDeleted] [bit] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
-- CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Merchant](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[OrganizationID] [bigint] NOT NULL,
	[MerchantName] [nvarchar](50) NULL,
	[Overview] [text] NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Marchent] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Merchant](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[OrganizationID] [bigint] NOT NULL,
--	[MerchantName] [nvarchar](50) NULL,
--	[Overview] [text] NOT NULL,
--	[Mobile] [nvarchar](50) NULL,
--	[Phone] [nvarchar](50) NULL,
--	[Email] [nvarchar](50) NULL,
--	[IsActive] [bit] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
-- CONSTRAINT [PK_Marchent] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[MerchantBranch](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[MerchantID] [bigint] NOT NULL,
	[BranchName] [nvarchar](50) NULL,
	[Overview] [text] NULL,
	[BranchPicture] [nvarchar](50) NULL,
	[LocationID] [bigint] NULL,
	[Address] [nvarchar](50) NULL,
	[Latitude] [nvarchar](50) NULL,
	[Longitude] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_MarchentBranch] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[MerchantBranch](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[MerchantID] [bigint] NOT NULL,
--	[BranchName] [nvarchar](50) NULL,
--	[Overview] [text] NULL,
--	[BranchPicture] [nvarchar](50) NULL,
--	[LocationID] [bigint] NULL,
--	[Address] [nvarchar](50) NULL,
--	[Latitude] [nvarchar](50) NULL,
--	[Longitude] [nvarchar](50) NULL,
--	[Mobile] [nvarchar](50) NULL,
--	[Phone] [nvarchar](50) NULL,
--	[IsActive] [bit] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
-- CONSTRAINT [PK_MarchentBranch] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

CREATE TABLE [dbo].[MerchantEmployee](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[EnrolmentID] [bigint] NOT NULL,
	[MerchantBranchID] [bigint] NOT NULL,
	[NationalNumber] [nvarchar](50) NOT NULL,
	[ProfilePicture] [nvarchar](50) NULL,
	[FirstName] [nvarchar](50) NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
 CONSTRAINT [PK_MarchentEmployee] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[MerchantEmployee](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[EnrolmentID] [bigint] NOT NULL,
--	[MerchantBranchID] [bigint] NOT NULL,
--	[NationalNumber] [nvarchar](50) NOT NULL,
--	[ProfilePicture] [nvarchar](50) NULL,
--	[FirstName] [nvarchar](50) NULL,
--	[MiddleName] [nvarchar](50) NULL,
--	[LastName] [nvarchar](50) NULL,
--	[Mobile] [nvarchar](50) NULL,
--	[Phone] [nvarchar](50) NULL,
--	[IsActive] [bit] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
-- CONSTRAINT [PK_MarchentEmployee] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

GO

CREATE TABLE [dbo].[Organization](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_tblOrganizations] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[Organization](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[Name] [nvarchar](50) NOT NULL,
--	[Timezone] [nvarchar](50) NOT NULL,
--	[CountryID] [int] NOT NULL,
--	[Mobile] [nvarchar](50) NULL,
--	[Phone] [nvarchar](50) NULL,
--	[IsActive] [bit] NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
-- CONSTRAINT [PK_tblOrganizations] PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]

GO

CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ReferenceNumber] [nvarchar](10) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[User](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[Username] [nvarchar](50) NOT NULL,
--	[Password] [nvarchar](50) NOT NULL,
--	[ReferenceNumber] [nvarchar](10) NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[IsActive] [bit] NOT NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]



GO

CREATE TABLE [dbo].[User](
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ReferenceNumber] [nvarchar](10) NOT NULL,
	[CreationDate] [datetime] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
	[IsActive] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]

GO

--Syntax Error: Incorrect syntax near OPTIMIZE_FOR_SEQUENTIAL_KEY.
--CREATE TABLE [dbo].[User](
--	[ID] [bigint] IDENTITY(1,1) NOT NULL,
--	[Username] [nvarchar](50) NOT NULL,
--	[Password] [nvarchar](50) NOT NULL,
--	[ReferenceNumber] [nvarchar](10) NOT NULL,
--	[CreationDate] [datetime] NOT NULL,
--	[ModifiedDate] [datetime] NOT NULL,
--	[IsActive] [bit] NOT NULL,
--PRIMARY KEY CLUSTERED 
--(
--	[ID] ASC
--)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
--) ON [PRIMARY]



GO
