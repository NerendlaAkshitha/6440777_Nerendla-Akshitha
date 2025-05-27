
-- 3. Inactive Users
SELECT u.user_id, u.name
FROM users u
LEFT JOIN registrations r ON u.user_id = r.user_id AND r.registration_date >= DATE_SUB(CURRENT_DATE, INTERVAL 90 DAY)
WHERE r.user_id IS NULL;
