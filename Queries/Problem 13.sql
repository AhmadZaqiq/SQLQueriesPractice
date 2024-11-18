Select Makes.Make,Count(*) as NumberOfVehicles
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Group By (Make)
Having Count(*)>20000
Order By NumberOfVehicles Desc
