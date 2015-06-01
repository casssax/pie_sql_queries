select COUNT(*) as Companies from dbo.PIE 

select COUNT(*) as Domains from dbo.PIE_Uri 

select COUNT(*) as Firmographics from dbo.PIE_Details 

select COUNT(distinct Source) as Unique_Source from dbo.PIE_Source 

select COUNT(distinct FileName) as Unique_filename from dbo.PIE_Source 