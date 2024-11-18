Select Makes.Make,Sum(VehicleDetails.NumDoors) as TotalNumberOfDoors 
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Group By Makes.Make
