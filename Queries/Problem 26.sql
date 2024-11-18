Select Bodies.BodyName,VehicleDetails.*
From VehicleDetails
Join Bodies
On VehicleDetails.BodyID=Bodies.BodyID
Where Bodies.BodyName ='Sport Utility' and VehicleDetails.Year >2020
