
select RIGHT(Domain, CHARINDEX('.',reverse(Domain))) from dbo.PIE_Uri



select Domain from dbo.PIE_Domain

select COUNT(*) from dbo.PIE_Domain where 
Domain like '%.network-addr' 


select distinct Domain from dbo.viewUniqueDomains