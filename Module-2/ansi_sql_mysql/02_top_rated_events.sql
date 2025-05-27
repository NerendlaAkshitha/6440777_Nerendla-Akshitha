
-- 2. Top Rated Events
SELECT e.event_id, e.name, AVG(f.rating) AS avg_rating
FROM events e
JOIN feedback f ON e.event_id = f.event_id
GROUP BY e.event_id, e.name
HAVING COUNT(f.feedback_id) >= 10
ORDER BY avg_rating DESC;
