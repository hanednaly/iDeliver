/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF NOT EXISTS (SELECT 1 FROM [dbo].[User])
BEGIN
-- INSERT Country
INSERT INTO [Country] VALUES('Jordan',NULL,'00962',1,GETUTCDATE(),GETUTCDATE())

-- INSERT Organization
INSERT INTO [Organization] VALUES('iDelivery','(UTC+02:00) Amman',1,'00962777007711',NULL,1,GETUTCDATE(),GETUTCDATE()) 

-- INSERT User
INSERT INTO [USER] VALUES('sysadmin','48A365B4CE1E322A55AE9017F3DAF0C0','2022030001',1,GETUTCDATE(),GETUTCDATE())

-- INSERT Enrolment
INSERT INTO [Enrolment] VALUES(1,1)

-- INSERT Organization Employee
INSERT INTO [OrganizationEmployee] VALUES(1,1,'0000000000000','','Muhannad','Munir','Hammad','00962776665444','',1,GETUTCDATE(),GETUTCDATE())
END