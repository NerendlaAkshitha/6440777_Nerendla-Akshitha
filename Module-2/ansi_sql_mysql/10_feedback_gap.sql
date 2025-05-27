
-- 10. Feedback Gap
SELECT e.event_id, e.name
FROM events e
JOIN registrations r ON e.event_id = r.event_id
LEFT JOIN feedback f ON r.event_id = f.event_id
WHERE f.event_id IS NULL
GROUP BY e.event_id, e.name;
