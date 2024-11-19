Select Top 3 Makes.Make,Count(*) as NumberOfModels
From Makes
Join MakeModels
On Makes.MakeID=MakeModels.MakeID
Group By Makes.Make
Order By NumberOfModels Desc
