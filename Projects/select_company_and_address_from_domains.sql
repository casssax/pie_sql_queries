select distinct pu.domain,pd.CompanyName, pd.Address, pd.City, pd.StateProvince, pd.ZipPlus4 
from dbo.PIE_Details pd
inner join dbo.[PIE_Company-Uri] pcu on pcu.ID_Company = pd.ID_Company
inner join dbo.PIE_Uri pu on pu.ID = pcu.ID_Uri
where pu.domain in ('Wellsfargo.com','Microsoft.com','Ge.com') and pd.CompanyName != ''
