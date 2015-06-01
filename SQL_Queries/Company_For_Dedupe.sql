select distinct ClientID AS Client_ID, 
CAST(RTRIM(LEFT(Company,255)) AS nvarchar(255)) AS Company,
CAST(RTRIM(LEFT(Address,255)) AS nvarchar(255)) AS Address, 
CAST(RTRIM(LEFT(PostalCode,255)) AS nvarchar(255)) AS Zip 

from dbo.PIE
order by Company
