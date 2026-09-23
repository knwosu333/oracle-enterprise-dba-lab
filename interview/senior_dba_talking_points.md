# Senior Oracle DBA Interview Talking Points

## Tell Me About Your DBA Approach
Frame answers around availability, recoverability, performance, security, automation, and controlled change.

## Production Issue
Use a structured incident response:
1. Scope the impact.
2. Stabilize service when necessary.
3. Gather evidence.
4. Identify root cause.
5. Implement the lowest-risk correction.
6. Validate service.
7. Document and prevent recurrence.

## Backup & Recovery
Explain RPO/RTO, backup strategy, archived redo, RMAN repository, restore vs. recovery, complete vs. incomplete recovery, and restore testing.

## RAC
Explain instances vs. database, Clusterware, SCAN, VIP, services, ASM, Cache Fusion, and how instance failure differs from database failure.

## Data Guard
Explain physical standby, redo transport/apply, protection modes, standby redo logs, Broker, switchover vs. failover, and application/service transition.

## Performance
Start with evidence: workload, waits, SQL, execution plans, resource pressure, blocking, statistics, and change history. Avoid proposing indexes or parameter changes before diagnosis.

## Security
Discuss least privilege, privileged-account review, auditing, credential protection, patching, separation of duties, and change control.

## What Makes the Work Senior-Level?
Senior DBA work is not defined only by executing commands. It includes understanding business impact, making recovery decisions, coordinating changes, reducing risk, diagnosing ambiguous incidents, validating outcomes, and documenting repeatable operations.
