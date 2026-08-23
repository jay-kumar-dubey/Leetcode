# Write your MySQL query statement below
select s.user_id , round(avg(Case when c.action = 'confirmed' Then 1.0 else 0.0 end),2) AS confirmation_rate From Signups s
left join Confirmations c
on s.user_id = c.user_id
group by s.user_id