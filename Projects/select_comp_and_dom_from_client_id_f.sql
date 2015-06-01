/* This script will create two selects for use in 
pie company/domain selects based on filename.
This is for pulling company/domains for a file that
is already on the pie database.

Enter filename below into @source_filename var.
*/

DECLARE @source_filename nvarchar(100);
set @source_filename = 'Penton_non-serviceproviders_040615.txt';

/*
Returns company name and associated domain(s). 
Input is list of client_id's from pie database.
Client_id's are from Filename from PIE_Source table select.
*/
select distinct pi.ClientID, pu.Domain 
from PIE_Uri pu
inner join [PIE_Company-Uri] pcu on pcu.ID_Uri=pu.ID
inner join [PIE] pi on pi.ClientID = pcu.ID_Company
where len(pu.Domain)>0 and IsSocialMediaLink = 0 and pi.ClientID in
(
select ID_Company from dbo.PIE_Source
where FileName = @source_filename
)
order by pi.ClientID asc

/*
Returns company name and associated Client_id(s). 
Input is Filename from PIE_Source table.
*/

select distinct pi.Company,so.ID_Company
from dbo.PIE pi
inner join dbo.PIE_Source so on so.ID_Company=pi.ClientID
where so.FileName = @source_filename
