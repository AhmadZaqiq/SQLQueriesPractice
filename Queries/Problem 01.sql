CREATE VIEW  VehicleMasterDetails2 as 
select VehicleDetails.ID , VehicleDetails.MakeID , Makes.Make , VehicleDetails.SubModelID , SubModels.SubModelName , 
VehicleDetails.BodyID , Bodies.BodyName , VehicleDetails.Vehicle_Display_Name , VehicleDetails.Year , 
VehicleDetails.DriveTypeID , DriveTypes.DriveTypeName , VehicleDetails.Engine_CC , VehicleDetails.Engine , 
VehicleDetails.Engine_Cylinders , VehicleDetails.Engine_Liter_Display , VehicleDetails.FuelTypeID , FuelTypes.FuelTypeName , 
VehicleDetails.NumDoors from VehicleDetails join Makes on VehicleDetails.MakeID = Makes.MakeID 
join SubModels on VehicleDetails.SubModelID = SubModels.SubModelID 
join Bodies on VehicleDetails.BodyID=Bodies.BodyID 
join DriveTypes on VehicleDetails.DriveTypeID = DriveTypes.DriveTypeID 
join FuelTypes on VehicleDetails.FuelTypeID =FuelTypes.FuelTypeID;
