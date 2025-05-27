
-- 11. Daily New User Count
SELECT DATE(created_at) AS reg_date, COUNT(*) AS user_count
FROM users
WHERE created_at >= DATE_SUB(CURRENT_DATE, INTERVAL 7 DAY)
GROUP BY reg_date;
