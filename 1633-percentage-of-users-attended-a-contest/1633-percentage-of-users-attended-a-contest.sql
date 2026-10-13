# Write your MySQL query statement below
SELECT r.contest_id, ROUND(COUNT(r.user_id)*100/(SELECT COUNT(*) FROM Users), 2) AS percentage
FROM Users u
JOIN Register r
ON r.user_id=u.user_id
GROUP BY contest_id
ORDER BY percentage DESC, r.contest_id ASC


