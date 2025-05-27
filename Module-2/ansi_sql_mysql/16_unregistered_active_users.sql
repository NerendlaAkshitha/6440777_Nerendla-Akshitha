
-- 16. Unregistered Active Users
SELECT u.user_id, u.name
FROM users u
LEFT JOIN registrations r ON u.user_id = r.user_id
WHERE u.created_at >= DATE_SUB(CURRENT_DATE, INTERVAL 30 DAY)
AND r.user_id IS NULL;
