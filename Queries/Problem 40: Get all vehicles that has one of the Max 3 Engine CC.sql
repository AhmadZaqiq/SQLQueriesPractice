Select Vehicle_Display_Name 
From VehicleDetails
Where Engine_CC in
(
Select  distinct top 3 Engine_CC from VehicleDetails
	Order By Engine_CC Desc
)
