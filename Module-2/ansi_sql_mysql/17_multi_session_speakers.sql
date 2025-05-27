
-- 17. Multi-Session Speakers
SELECT speaker_id, COUNT(*) AS session_count
FROM sessions
GROUP BY speaker_id
HAVING session_count > 1;
