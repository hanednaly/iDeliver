CREATE TABLE [dbo].[Location]
(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](50) NULL,
	[CountryID] [int] NOT NULL,
	[City] [nvarchar](50) NULL,
	[IsDeleted] [bit] NOT NULL DEFAULT 0,
	[ModifiedDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[CreationDate] [datetime] NOT NULL DEFAULT GETUTCDATE(), 
    CONSTRAINT [PK_Location] PRIMARY KEY ([ID] ASC),
	CONSTRAINT [FK_Location_Country] FOREIGN KEY([CountryID]) REFERENCES [dbo].[Country] ([ID])
)