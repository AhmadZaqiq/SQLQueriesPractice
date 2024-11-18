Select Bodies.BodyName,VehicleDetails.*
From VehicleDetails
Join Bodies
On VehicleDetails.BodyID=Bodies.BodyID
Where Bodies.BodyName in ('Coupe','Hatchback','Sedan')
