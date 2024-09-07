select unique_id,name  from Employees E
left join EmployeeUNI 
on E.id=EmployeeUNI.id