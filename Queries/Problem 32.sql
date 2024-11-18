Select *
From
(
Select Vehicle_Display_Name,Year,AgeOfCar = Year(GETDATE())-VehicleDetails.Year
From VehicleDetails
)R1
Where R1.AgeOfCar Between 15 and 25
Order By AgeOfCar desc
