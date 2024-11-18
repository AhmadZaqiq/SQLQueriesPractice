Select Distinct Makes.Make, DriveTypes.DriveTypeName,Count(*) as Total
From VehicleDetails
Join DriveTypes
On VehicleDetails.DriveTypeID=DriveTypes.DriveTypeID
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Group By Makes.Make, DriveTypes.DriveTypeName
Order By Makes.Make Asc,DriveTypes.DriveTypeName Desc
