Select Count(*) From
(
Select Distinct Makes.Make,DriveTypes.DriveTypeName
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Join DriveTypes
On VehicleDetails.DriveTypeID=DriveTypes.DriveTypeID
Where DriveTypeName ='FWD'
) R1
