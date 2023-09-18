# Write your MySQL query statement below
SELECT contest_id, round(count(user_id)/ (SELECT count(*) FROM Users)*100 ,2)  percentage
FROM Register 
JOIN Users u using(user_id)
GROUP BY contest_id
ORDER BY percentage DESC, contest_id; 