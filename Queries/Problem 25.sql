select Makes.Make, VehicleDetails.Engine,VehicleDetails.Engine_Cylinders
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Where VehicleDetails.Engine LIke '%OHV%' and VehicleDetails.Engine_Cylinders = 4
