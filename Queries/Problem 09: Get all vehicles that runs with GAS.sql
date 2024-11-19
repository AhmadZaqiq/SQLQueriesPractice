Select * From VehicleDetails
Join FuelTypes
On VehicleDetails.FuelTypeID=FuelTypes.FuelTypeID
Where  FuelTypes.FuelTypeName = N'Gas'
