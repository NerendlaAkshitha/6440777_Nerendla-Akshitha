
-- 17. Multi-Session Speakers
SELECT speaker_id, COUNT(*) AS session_count
FROM sessions
GROUP BY speaker_id
HAVING session_count > 1;
18. Resource Availability Check
SELECT e.event_id, e.name
FROM events e
LEFT JOIN resources r ON e.event_id = r.event_id
WHERE r.event_id IS NULL;

 19. Completed Events with Feedback Summary
SELECT e.event_id, e.name, COUNT(r.user_id) AS total_registrations, AVG(f.rating) AS avg_rating
FROM events e
LEFT JOIN registrations r ON e.event_id = r.event_id
LEFT JOIN feedback f ON e.event_id = f.event_id
WHERE e.status = 'completed'
GROUP BY e.event_id, e.name;

20. User Engagement Index
SELECT u.user_id, u.name, 
       COUNT(DISTINCT r.event_id) AS events_attended, 
       COUNT(DISTINCT f.feedback_id) AS feedbacks_given
FROM users u
LEFT JOIN registrations r ON u.user_id = r.user_id
LEFT JOIN feedback f ON u.user_id = f.user_id
GROUP BY u.user_id, u.name;

21. Top Feedback Providers
SELECT user_id, COUNT(*) AS feedback_count
FROM feedback
GROUP BY user_id
ORDER BY feedback_count DESC
LIMIT 5;

22. Duplicate Registrations Check
SELECT user_id, event_id, COUNT(*) AS reg_count
FROM registrations
GROUP BY user_id, event_id
HAVING reg_count > 1;

23. Registration Trends
SELECT DATE_FORMAT(registration_date, '%Y-%m') AS month, COUNT(*) AS reg_count
FROM registrations
WHERE registration_date >= DATE_SUB(CURRENT_DATE, INTERVAL 12 MONTH)
GROUP BY month
ORDER BY month;

24. Average Session Duration per Event
SELECT event_id, AVG(TIMESTAMPDIFF(MINUTE, start_time, end_time)) AS avg_duration_minutes
FROM sessions
GROUP BY event_id;

25. Events Without Sessions
SELECT e.event_id, e.name
FROM events e
LEFT JOIN sessions s ON e.event_id = s.event_id
WHERE s.event_id IS NULL;


