Select Vehicle_Display_Name,Year,AgeOfCar = Year(GETDATE())-VehicleDetails.Year
From VehicleDetails
Order By AgeOfCar desc
