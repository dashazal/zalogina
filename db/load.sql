BEGIN;
DELETE FROM readings;
DELETE FROM events;

-- === Показания датчиков (readings) ===
-- Период T = 2 с, поэтому t_s = n * 2
INSERT INTO readings (n, t_s, sensor, value) VALUES (1, 2.0, 's1', 3.91);
INSERT INTO readings (n, t_s, sensor, value) VALUES (1, 2.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (1, 2.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (2, 4.0, 's1', 79.96);
INSERT INTO readings (n, t_s, sensor, value) VALUES (2, 4.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (2, 4.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (3, 6.0, 's1', 86.31);
INSERT INTO readings (n, t_s, sensor, value) VALUES (3, 6.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (3, 6.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (4, 8.0, 's1', 89.05);
INSERT INTO readings (n, t_s, sensor, value) VALUES (4, 8.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (4, 8.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (5, 10.0, 's1', 23.75);
INSERT INTO readings (n, t_s, sensor, value) VALUES (5, 10.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (5, 10.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (6, 12.0, 's1', 81.04);
INSERT INTO readings (n, t_s, sensor, value) VALUES (6, 12.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (6, 12.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (7, 14.0, 's1', 8.11);
INSERT INTO readings (n, t_s, sensor, value) VALUES (7, 14.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (7, 14.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (8, 16.0, 's1', 82.01);
INSERT INTO readings (n, t_s, sensor, value) VALUES (8, 16.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (8, 16.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (9, 18.0, 's1', 8.90);
INSERT INTO readings (n, t_s, sensor, value) VALUES (9, 18.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (9, 18.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (10, 20.0, 's1', 8.90);
INSERT INTO readings (n, t_s, sensor, value) VALUES (10, 20.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (10, 20.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (11, 22.0, 's1', 8.90);
INSERT INTO readings (n, t_s, sensor, value) VALUES (11, 22.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (11, 22.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (12, 24.0, 's1', 8.90);
INSERT INTO readings (n, t_s, sensor, value) VALUES (12, 24.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (12, 24.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (13, 26.0, 's1', 8.90);
INSERT INTO readings (n, t_s, sensor, value) VALUES (13, 26.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (13, 26.0, 's3', 280.32);
INSERT INTO readings (n, t_s, sensor, value) VALUES (14, 28.0, 's1', 94.82);
INSERT INTO readings (n, t_s, sensor, value) VALUES (14, 28.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (14, 28.0, 's3', 280.57);
INSERT INTO readings (n, t_s, sensor, value) VALUES (15, 30.0, 's1', 94.82);
INSERT INTO readings (n, t_s, sensor, value) VALUES (15, 30.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (15, 30.0, 's3', 280.81);
INSERT INTO readings (n, t_s, sensor, value) VALUES (16, 32.0, 's1', 94.82);
INSERT INTO readings (n, t_s, sensor, value) VALUES (16, 32.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (16, 32.0, 's3', 280.81);
INSERT INTO readings (n, t_s, sensor, value) VALUES (17, 34.0, 's1', 94.82);
INSERT INTO readings (n, t_s, sensor, value) VALUES (17, 34.0, 's2', 31.12);
INSERT INTO readings (n, t_s, sensor, value) VALUES (17, 34.0, 's3', 280.81);

-- === События (events) ===
INSERT INTO events (n, t_s, type, message) VALUES (3, 6.0, 'THRESHOLD', 's1 > 80');
INSERT INTO events (n, t_s, type, message) VALUES (5, 10.0, 'NORMAL', 's1 <= 80');
INSERT INTO events (n, t_s, type, message) VALUES (6, 12.0, 'THRESHOLD', 's1 > 80');
INSERT INTO events (n, t_s, type, message) VALUES (7, 14.0, 'NORMAL', 's1 <= 80');
INSERT INTO events (n, t_s, type, message) VALUES (8, 16.0, 'THRESHOLD', 's1 > 80');
INSERT INTO events (n, t_s, type, message) VALUES (9, 18.0, 'NORMAL', 's1 <= 80');
INSERT INTO events (n, t_s, type, message) VALUES (14, 28.0, 'THRESHOLD', 's1 > 80');

COMMIT;
