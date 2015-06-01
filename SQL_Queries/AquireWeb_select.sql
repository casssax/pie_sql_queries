select distinct Domain from dbo.PIE_Uri
where ID in
(
select ID_Uri from "PIE_Company-Uri"
where ID_Company in 
(
select ID_Company from dbo.PIE_Source 
where FileName = 'LSC_Optum_TargetedAcctList_030714.Txt'))