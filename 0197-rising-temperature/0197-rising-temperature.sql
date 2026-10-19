# Write your MySQL query statement below
SELECT w2.id AS id FROM Weather w1
JOIN Weather w2
ON w1.recordDate = DATE_SUB(w2.recordDate, INTERVAL 1 DAY ) 
WHERE w2.temperature>w1.temperature;

