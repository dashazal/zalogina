-- Схема базы данных для варианта 10 (Жалюзи)
-- Таблица показаний датчиков
CREATE TABLE IF NOT EXISTS readings (
    id     INTEGER PRIMARY KEY AUTOINCREMENT,
    n      INTEGER NOT NULL,      -- номер измерения
    t_s    REAL    NOT NULL,      -- время в секундах (n * T)
    sensor TEXT    NOT NULL,      -- имя датчика: s1, s2, s3
    value  REAL    NOT NULL       -- значение датчика
);

-- Таблица событий (порог THRESHOLD/NORMAL и неисправность FAULT)
CREATE TABLE IF NOT EXISTS events (
    id      INTEGER PRIMARY KEY AUTOINCREMENT,
    n       INTEGER NOT NULL,
    t_s     REAL    NOT NULL,
    type    TEXT    NOT NULL,      -- THRESHOLD, NORMAL, FAULT
    message TEXT                   -- описание события
);
