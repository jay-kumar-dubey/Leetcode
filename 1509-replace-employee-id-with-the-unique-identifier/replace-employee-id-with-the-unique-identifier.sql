# Write your MySQL query statement below
Select unique_id, name 
from Employees
left join 
EmployeeUNI
on EmployeeUNI.id = Employees.id;