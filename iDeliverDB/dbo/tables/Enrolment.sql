CREATE TABLE [dbo].[Enrolment]
(
	[ID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [bigint] NOT NULL,
	[RoleID] [int] NOT NULL, 
    CONSTRAINT [PK_Enrolment] PRIMARY KEY ([ID] ASC), 
    CONSTRAINT [FK_Enrolment_User] FOREIGN KEY([UserID]) REFERENCES [dbo].[User] ([ID]),
	CONSTRAINT [UK_tblEnrolments] UNIQUE NONCLUSTERED 
	(
		[UserID] ASC,
		[RoleID] ASC
	)
)
