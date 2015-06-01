select distinct pi.Company, pu.Domain 
from PIE_Uri pu
inner join [PIE_Company-Uri] pcu on pcu.ID_Uri=pu.ID
inner join [PIE_Source] ps on ps.ID_Company=pcu.ID_Company and FileName in ('Prelytix_EMCRSA_TargetAcctList_112414.Txt')
inner join [PIE] pi on pi.ClientID =ps.ID_Company
where len(pu.Domain)>0 and IsSocialMediaLink != 1
order by pi.Company asc
