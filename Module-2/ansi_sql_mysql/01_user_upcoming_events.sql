
-- 1. User Upcoming Events
SELECT u.user_id, u.name, e.event_id, e.name AS event_name, e.date
FROM users u
JOIN registrations r ON u.user_id = r.user_id
JOIN events e ON r.event_id = e.event_id
WHERE e.date > CURRENT_DATE AND u.city = e.city
ORDER BY e.date;
