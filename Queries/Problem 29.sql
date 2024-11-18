Select Found=1
Where
Exists
(
Select *
From  VehicleDetails
Where Year= 1950
)
