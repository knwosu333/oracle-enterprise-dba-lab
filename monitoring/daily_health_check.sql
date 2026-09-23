-- Enterprise Oracle daily health overview
SET LINESIZE 220
SET PAGESIZE 100

PROMPT === INSTANCE ===
SELECT instance_name, host_name, version, status,
       database_status, startup_time
FROM v$instance;

PROMPT === DATABASE ===
SELECT name, open_mode, database_role, log_mode,
       force_logging, flashback_on
FROM v$database;

PROMPT === TABLESPACE USAGE ===
WITH df AS (
  SELECT tablespace_name, SUM(bytes) bytes
  FROM dba_data_files GROUP BY tablespace_name
), fs AS (
  SELECT tablespace_name, SUM(bytes) bytes
  FROM dba_free_space GROUP BY tablespace_name
)
SELECT df.tablespace_name,
       ROUND(df.bytes/1024/1024/1024,2) total_gb,
       ROUND(NVL(fs.bytes,0)/1024/1024/1024,2) free_gb,
       ROUND((df.bytes-NVL(fs.bytes,0))*100/df.bytes,2) pct_used
FROM df LEFT JOIN fs ON df.tablespace_name=fs.tablespace_name
ORDER BY pct_used DESC;

PROMPT === INVALID OBJECTS ===
SELECT owner, object_type, COUNT(*) invalid_count
FROM dba_objects
WHERE status='INVALID'
GROUP BY owner, object_type
ORDER BY owner, object_type;

PROMPT === BLOCKED SESSIONS ===
SELECT sid, serial#, username, blocking_session,
       event, seconds_in_wait
FROM v$session
WHERE blocking_session IS NOT NULL
ORDER BY seconds_in_wait DESC;
