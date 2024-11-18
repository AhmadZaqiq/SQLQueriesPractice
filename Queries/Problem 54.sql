Select Employees.*,Managers.Name as MangerName 
From Employees
Join Employees As Managers
On Employees.ManagerID=Managers.EmployeeID
Where Managers.Name = 'Mohammed'
