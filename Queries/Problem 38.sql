Select Engine_CC
From VehicleDetails
Group By Engine_CC
Having Count(Engine_CC)=1
Order By Engine_CC Desc