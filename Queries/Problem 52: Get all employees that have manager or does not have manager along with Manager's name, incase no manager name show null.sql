Select Employees.*,ManagersName.Name  ManagerName 
From Employees
Left Join
Employees AS ManagersName
On Employees.ManagerID=ManagersName.EmployeeID
