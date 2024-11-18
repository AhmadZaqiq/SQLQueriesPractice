Select Makes.Make, Count(*) AS NumberOfVehicles 
From VehicleDetails
Join Makes
On Makes.MakeID=VehicleDetails.MakeID
Where Year Between 1950 and 2000
Group By(Make)
Having Count(*)>12000
Order By NumberOfVehicles Desc
