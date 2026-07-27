# Write your MySQL query statement below
select Today.id 
from Weather yesterday
Cross join Weather today

where datediff(today.recordDate,yesterday.recordDate) = 1
    and today.temperature > yesterday.temperature;