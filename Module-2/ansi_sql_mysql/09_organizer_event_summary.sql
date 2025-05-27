
-- 9. Organizer Event Summary
SELECT o.organizer_id, o.name, 
       COUNT(e.event_id) AS total_events,
       SUM(CASE WHEN e.status = 'upcoming' THEN 1 ELSE 0 END) AS upcoming,
       SUM(CASE WHEN e.status = 'completed' THEN 1 ELSE 0 END) AS completed,
       SUM(CASE WHEN e.status = 'cancelled' THEN 1 ELSE 0 END) AS cancelled
FROM organizers o
LEFT JOIN events e ON o.organizer_id = e.organizer_id
GROUP BY o.organizer_id, o.name;
