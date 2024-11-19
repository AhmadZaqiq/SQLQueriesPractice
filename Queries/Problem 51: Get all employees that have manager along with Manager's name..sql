Select Employees.Name,Employees.ManagerID,Employees.Salary,Managers.Name As ManagerName
From Employees
Join Employees As Managers
On Employees.ManagerID=Managers.EmployeeID
