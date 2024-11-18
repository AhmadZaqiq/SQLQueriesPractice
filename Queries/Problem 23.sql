Select Distinct VehicleDetails.MakeID,Makes.Make,SubModels.SubModelName
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Join SubModels
On VehicleDetails.SubModelID=SubModels.SubModelID
Where SubModels.SubModelName = 'Elite'
