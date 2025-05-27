
-- 6. Event Resource Summary
SELECT event_id, COUNT(*) AS resource_count
FROM resources
GROUP BY event_id;
