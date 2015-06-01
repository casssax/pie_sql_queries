select distinct FileName, Source 
from dbo.PIE_Source 
where FileName not like 'Original%' and
FileName not like 'Output%'
