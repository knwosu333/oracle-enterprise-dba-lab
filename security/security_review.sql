-- Basic Oracle account review
SET LINESIZE 220
COLUMN username FORMAT A30
COLUMN account_status FORMAT A25

SELECT username, account_status, profile,
       created, expiry_date, lock_date
FROM dba_users
ORDER BY account_status, username;

-- Users granted powerful DBA role
SELECT grantee, granted_role, admin_option, default_role
FROM dba_role_privs
WHERE granted_role = 'DBA'
ORDER BY grantee;

-- Review carefully: legitimate administrative accounts may require these privileges.
