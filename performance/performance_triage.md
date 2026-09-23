# Performance Incident Triage

## Report
Users report that the application is slow.

## Triage Sequence
1. Define the incident time window and affected service.
2. Determine whether impact is database-wide or isolated.
3. Review host CPU, memory and I/O.
4. Review database load and active sessions.
5. Identify dominant non-idle waits.
6. Check blocking and transaction contention.
7. Identify expensive SQL.
8. Review execution plans and cardinality.
9. Check statistics, object access patterns and workload changes.
10. Correlate with AWR/ASH where appropriately licensed.
11. Review recent application/database/infrastructure changes.
12. Implement a controlled fix and compare before/after metrics.

## Principle
Do not tune by assumption. A wait event, high CPU reading, or expensive SQL statement is evidence to investigate, not automatically the root cause.
