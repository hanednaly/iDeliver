CREATE TABLE [dbo].[Country]
(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[CountryFlag] [nvarchar](50) NULL,
	[CountryCode] [nvarchar](10) NULL,
	[IsDeleted] [bit] NOT NULL DEFAULT 0, 
	[CreationDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [PK_Country] PRIMARY KEY ([ID] ASC),
)
