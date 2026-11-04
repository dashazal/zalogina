-- 10 последних показаний
SELECT * FROM readings ORDER BY id DESC LIMIT 10;

-- Минимум, среднее и максимум по каждому датчику
SELECT sensor, MIN(value) AS min_value,
       ROUND(AVG(value), 2) AS avg_value,
       MAX(value) AS max_value
FROM readings
GROUP BY sensor;

-- Все события по порядку
SELECT * FROM events ORDER BY id; 
