/*
Returns company name and associated domain(s). 
Input is list of client_id's from pie database.
Client_id's are from fuzzy match using MatchUp software.
Input to MatchUp is list of company names from client. 
*/
select distinct pi.ClientID, pu.Domain 
from PIE_Uri pu
inner join [PIE_Company-Uri] pcu on pcu.ID_Uri=pu.ID
inner join [PIE] pi on pi.ClientID = pcu.ID_Company
where len(pu.Domain)>0 and IsSocialMediaLink = 0 and pi.ClientID in
(

)
order by pi.ClientID asc
