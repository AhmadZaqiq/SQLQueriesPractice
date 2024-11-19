Select Count(*) as NumberOfVehiclesAboveAverageEngineCC 
From
(
Select * 
From VehicleDetails
Where Engine_CC > (Select Avg(Engine_CC) As Average From  VehicleDetails)
) R1
