Select Makes.Make, Count(*) AS NumberOfVehicles 
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Where Year Between 1950 and 2000
Group By Makes.Make
Order By NumberOfVehicles Desc
