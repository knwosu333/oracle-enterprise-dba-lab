# Incident Scenario — Tablespace Approaching Capacity

## Alert
Monitoring reports a permanent tablespace above its operational threshold.

## Response
1. Confirm current utilization and growth trend.
2. Identify the segments consuming space.
3. Determine whether growth is expected or abnormal.
4. Review datafile size, autoextend configuration, filesystem/ASM capacity, and maximum file limits.
5. Coordinate with the application/data owner when unexpected data growth is involved.
6. Choose the lowest-risk corrective action: reclaim space where valid, manage data according to retention policy, resize/add storage when justified, or correct abnormal workload.
7. Continue monitoring after remediation.

## Avoid
Do not simply enable unlimited autoextend without understanding underlying storage capacity and the reason for growth.
