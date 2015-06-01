SELECT DISTINCT pu.Domain, ps.FileName
FROM         dbo.PIE_Uri AS pu INNER JOIN
                      dbo.[PIE_Company-Uri] AS pcu ON pcu.ID_Uri = pu.ID INNER JOIN
                      dbo.PIE_Source AS ps ON ps.ID_Company = pcu.ID_Company AND NOT (ps.Source LIKE 'Output%') AND NOT (ps.Source LIKE 'Sergei%') AND LEN(ISNULL(pu.Domain, 
                      '')) > 1
Where ps.FileName Like '%Cloud and VDI%'
