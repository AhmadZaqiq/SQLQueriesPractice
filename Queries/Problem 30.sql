Select Vehicle_Display_Name,NumDoors,NumberOfDoorsByWords =
Case
WHEN NumDoors=0 THEN 'No Doors'
WHEN NumDoors=1 THEN 'One Door'
WHEN NumDoors=2 THEN 'Two Doors'
WHEN NumDoors=3 THEN 'Three Door'
WHEN NumDoors=4 THEN 'Four Doors'
WHEN NumDoors=5 THEN 'Five Doors'
WHEN NumDoors=6 THEN 'Six Doors'
WHEN NumDoors=8 THEN 'Eight Doors'
WHEN NumDoors is Null THEN ' Not Set'
Else 'Unknown'
END
From VehicleDetails
