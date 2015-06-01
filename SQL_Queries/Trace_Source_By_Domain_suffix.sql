select FileName from dbo.PIE_Source
where ID_Company in 
(
select ID_Company from dbo.[PIE_Company-Uri]
where ID_Uri in
(
SELECT ID FROM dbo.PIE_Uri
WHERE Domain LIKE '%.info'))