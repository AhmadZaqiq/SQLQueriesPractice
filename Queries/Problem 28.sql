Select Bodies.BodyName,VehicleDetails.*
From VehicleDetails
Join Bodies
On VehicleDetails.BodyID=Bodies.BodyID
Where Bodies.BodyName in ('Coupe','Hatchback','Sedan') and Year in (2008,2020,2021)
