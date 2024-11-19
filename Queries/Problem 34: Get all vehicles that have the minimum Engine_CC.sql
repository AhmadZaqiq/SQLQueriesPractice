Select *
From VehicleDetails
Where Engine_CC = (Select(Select Min(Engine_CC) As Minimun From VehicleDetails))
