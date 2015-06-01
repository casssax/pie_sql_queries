/*
Returns company name and associated Client_id(s). 
Input is Filename from PIE_Source table.
*/

select distinct pi.Company,so.ID_Company
from dbo.PIE pi
inner join dbo.PIE_Source so on so.ID_Company=pi.ClientID
where so.FileName = 'Prelytix_Cloudera_TargetAcctList_021915.Txt'