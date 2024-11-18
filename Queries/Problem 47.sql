Select Max(NumberOfModels) as MaxNumberOfModels
From
(
SELECT Makes.Make, COUNT(*) AS NumberOfModels
FROM Makes INNER JOIN
MakeModels ON Makes.MakeID = MakeModels.MakeID
GROUP BY Makes.Make		
) R1
