# Write your MySQL query statement below
SELECT round((count(DISTINCT A2.player_id))/
        (SELECT count(DISTINCT player_id) FROM Activity),2) fraction
FROM Activity A1 
JOIN Activity A2 on A1.player_id = A2.player_id AND DATEDIFF(A1.event_date, A2.event_date)=1 
WHERE(A2.player_id, A2.event_date) 
     IN (SELECT player_id, min(event_date) FROM Activity GROUP BY player_id)
