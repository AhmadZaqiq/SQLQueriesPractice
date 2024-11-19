Select *,Cast(NumberOfVehicles as float )/Cast(TotalVehicles as float ) As Perc
From
(
Select Makes.Make, Count(*) AS NumberOfVehicles,(Select Count(*) From VehicleDetails) As TotalVehicles
From VehicleDetails
Join Makes
On Makes.MakeID=VehicleDetails.MakeID
Where Year Between 1950 and 2000
Group By(Make)
) R1
Order By NumberOfVehicles Desc
