
-- 14. Most Registered Events
SELECT e.event_id, e.name, COUNT(r.user_id) AS registrations
FROM events e
JOIN registrations r ON e.event_id = r.event_id
GROUP BY e.event_id, e.name
ORDER BY registrations DESC
LIMIT 3;
