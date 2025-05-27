
-- 12. Event with Maximum Sessions
SELECT event_id, COUNT(*) AS session_count
FROM sessions
GROUP BY event_id
ORDER BY session_count DESC
LIMIT 1;
