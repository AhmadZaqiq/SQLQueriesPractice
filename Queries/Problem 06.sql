Select Makes.Make, Count(*) AS NumberOfVehicles,(Select Count(*) From VehicleDetails) As TotalVehicles
From VehicleDetails
Join Makes
On Makes.MakeID=VehicleDetails.MakeID
Where Year Between 1950 and 2000
Group By(Make)
Order By NumberOfVehicles Desc
