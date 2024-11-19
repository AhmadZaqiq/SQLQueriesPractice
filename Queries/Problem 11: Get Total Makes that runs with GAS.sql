Select Count(*) AS TotalMakesRunsOnGas
From
(
Select Distinct Makes.Make,FuelTypes.FuelTypeName
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Join FuelTypes
On VehicleDetails.FuelTypeID=FuelTypes.FuelTypeID
Where  FuelTypes.FuelTypeName = N'Gas'
)R1
