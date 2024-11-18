Select *
From VehicleDetails
Where Engine_CC = (Select(Select Max(Engine_CC) As Maximum From VehicleDetails))
