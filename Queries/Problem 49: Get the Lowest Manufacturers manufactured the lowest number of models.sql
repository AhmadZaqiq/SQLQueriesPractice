Select Makes.Make,Count(*) as NumberOfModels
From Makes
Join MakeModels
On Makes.MakeID=MakeModels.MakeID
Group By  Makes.Make
Having Count(*) =(
Select Min(NumberOfModels) as MaxNumberOfModels
From
(
SELECT Makes.Make, COUNT(*) AS NumberOfModels
FROM Makes INNER JOIN
MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make		
)R1
)
