USE Movies_Data_DW
GO

EXEC spRefresh_Dim_MovieData_staging

select * from dbo.Dim_MovieData_staging ORDER BY TITLE