# Write your MySQL query statement below
SELECT LEFT(trans_date, 7)month, country,  
count(id) trans_count,
sum(case when state='approved' then 1 else 0 end) as approved_count, 
sum(amount) trans_total_amount, 
sum(case when state='approved' then amount else 0 end) as approved_total_amount
FROM Transactions
GROUP BY LEFT(trans_date, 7), country