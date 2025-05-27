
-- 13. Average Rating per City
SELECT e.city, AVG(f.rating) AS avg_rating
FROM feedback f
JOIN events e ON f.event_id = e.event_id
GROUP BY e.city;
