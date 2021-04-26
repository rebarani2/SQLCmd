
DECLARE @Backup NVARCHAR(400)
SET @Backup=CONCAT('C:\DATATOPROCESS1\University-',(FORMAT(GETDATE(),'yyyy-MM-dd-hh-mm-ss-tt')),'.bak')
BACKUP DATABASE Animal_Shelter TO  DISK = @Backup
WITH NOFORMAT, NOINIT,  NAME = N'University-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10
GO