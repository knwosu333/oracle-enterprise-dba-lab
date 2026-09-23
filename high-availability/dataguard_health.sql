-- Data Guard role/protection status
SET LINESIZE 220
SELECT name, open_mode, database_role,
       protection_mode, protection_level,
       switchover_status
FROM v$database;

-- Particularly useful on the standby
SELECT name, value, unit, time_computed
FROM v$dataguard_stats
WHERE name IN ('transport lag','apply lag','apply finish time');
