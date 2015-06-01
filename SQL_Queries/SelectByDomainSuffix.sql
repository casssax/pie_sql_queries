select DISTINCT Domain from dbo.PIE_Uri
where UPPER(Domain) like '%.GOV'