Select Makes.Make,FuelTypes.FuelTypeName, Count(FuelTypeName)as NumberOfVehicles
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Join FuelTypes
On VehicleDetails.FuelTypeID=FuelTypes.FuelTypeID
Group by Make,FuelTypeName
Order by NumberOfVehicles Desc
