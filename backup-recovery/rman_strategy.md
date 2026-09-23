# RMAN Backup & Recovery Strategy

## Example Strategy
A production strategy should be derived from RPO/RTO, database size, change rate, storage capacity, retention, and restore-test results.

A representative design might include:
- Periodic incremental level 0 backup
- Scheduled incremental level 1 backups
- Frequent archived redo log backups
- Control file/SPFILE protection
- Backup optimization/retention policy where appropriate
- Backup integrity checks
- Regular restore/recovery testing
- Off-host/off-site protection according to organizational requirements

## Critical Principle
A completed backup job does not prove recoverability. Recovery must be tested.

## Validation
Useful RMAN operations include:
```
LIST BACKUP SUMMARY;
CROSSCHECK BACKUP;
RESTORE DATABASE VALIDATE;
VALIDATE DATABASE;
```

## Recovery Decision
Before recovery, determine:
1. Failure scope
2. Required recovery point
3. Available backups
4. Archived redo availability
5. Control file/SPFILE status
6. RPO/RTO impact
7. Whether complete or incomplete recovery is required
