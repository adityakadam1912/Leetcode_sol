# Write your MySQL query statement below
SELECT p.project_id, ROUND(AVG(e.experience_years), 2) AS average_years
FROM Employee e
JOIN Project p
ON p.employee_id=e.employee_id
GROUP BY p.project_id
