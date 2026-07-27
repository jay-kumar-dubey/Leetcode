# Write your MySQL query statement below
Select * from Cinema
where id%2 = 1 and description not like 'boring'
order by rating desc;