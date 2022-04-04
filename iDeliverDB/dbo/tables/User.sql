CREATE TABLE [dbo].[User]
(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL,
	[ReferenceNumber] [nvarchar](50) NOT NULL,
	[IsActive] [bit] NOT NULL DEFAULT 1,
	[CreationDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[ModifiedDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
    CONSTRAINT [PK_User] PRIMARY KEY ([ID] ASC),
	CONSTRAINT [UK_User] UNIQUE NONCLUSTERED ([ReferenceNumber]),
)