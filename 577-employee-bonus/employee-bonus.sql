# Write your MySQL query statement below
select Employee.name, bonus 
from Employee
left join Bonus
on bonus.empId = employee.empId
where bonus < 1000 or bonus is Null;