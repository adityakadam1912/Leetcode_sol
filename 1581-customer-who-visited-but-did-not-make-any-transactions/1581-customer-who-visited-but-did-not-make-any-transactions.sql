# Write your MySQL query statement below
SELECT v.customer_id, SUM(CASE WHEN t.transaction_id IS NULL THEN 1 ELSE 0 END) AS count_no_trans 
FROM Visits v
LEFT JOIN Transactions t
ON v.visit_id=t.visit_id
GROUP BY customer_id 
HAVING SUM(CASE WHEN t.transaction_id IS NULL THEN 1 ELSE 0 END) > 0
