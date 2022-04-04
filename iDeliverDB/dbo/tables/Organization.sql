CREATE TABLE [dbo].[Organization]
(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Timezone] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
	[Mobile] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[IsActive] [bit] NOT NULL DEFAULT 1,
	[CreationDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedDate] [datetime] NOT NULL DEFAULT GETUTCDATE(), 
    CONSTRAINT [PK_Organization] PRIMARY KEY ([ID] ASC),
	CONSTRAINT [FK_Organization_Country] FOREIGN KEY([CountryID]) REFERENCES [dbo].[Country] ([ID])
)
