CREATE TABLE [dbo].[MerchantEmployee]
(
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
	[IsActive] [bit] NOT NULL DEFAULT 1,
	[ModifiedDate] [datetime] NOT NULL DEFAULT GETUTCDATE(),
	[CreationDate] [datetime] NOT NULL DEFAULT GETUTCDATE(), 
    CONSTRAINT [PK_MerchantEmployee] PRIMARY KEY ([ID]),
	CONSTRAINT [UK_MerchantEmployeeNationalNumber] UNIQUE NONCLUSTERED ([NationalNumber]),
	CONSTRAINT [FK_MerchantEmployee_Enrolment] FOREIGN KEY([EnrolmentID]) REFERENCES [dbo].[Enrolment] ([ID]),
	CONSTRAINT [FK_MerchantEmployee_MerchantBranch] FOREIGN KEY([MerchantBranchID]) REFERENCES [dbo].[MerchantBranch] ([ID])
)
