select C.Company, D.Domain from
dbo.PIE as C join 
(select B.Domain, A.ID_Company from
dbo.[PIE_Company-Uri] as A join 
(select Domain,ID from dbo.PIE_Uri
where ID in
(
select ID_Uri from dbo.[PIE_Company-Uri]
where ID_Company in 
(
select ID_Company from dbo.PIE_Source where
FileName = 'Prelytix_EMCRSA_TargetAcctList_112414.Txt'
))
and IsSocialMediaLink = ''
and Domain != ''
) as B
on A.ID_Uri = B.ID) as D
on C.ClientID = D.ID_Company