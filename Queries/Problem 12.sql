Select Makes.Make,Count(*) as NumberOfVehicles
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Group By (Make)
Order By NumberOfVehicles Desc