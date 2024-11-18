Select Distinct Makes.Make 
From VehicleDetails
Join Makes
On VehicleDetails.MakeID=Makes.MakeID
Where Engine_CC in
(
Select  distinct top 3 Engine_CC from VehicleDetails
	Order By Engine_CC Desc
)
