# Oracle Enterprise DBA Lab

An end-to-end Oracle DBA portfolio lab designed to demonstrate the operational thinking expected in an enterprise production environment.

## Lab Scope
This repository brings together database administration, monitoring, backup/recovery, high availability, performance tuning, security, patching, and incident response.

### Demonstrated Areas
- Oracle architecture and multitenant administration
- Daily production health checks
- Tablespace and storage monitoring
- RMAN backup and recovery strategy
- Data Guard operational procedures
- RAC/Clusterware operational concepts
- Performance troubleshooting
- User/security auditing
- Patching and upgrade planning
- Production incident response
- Disaster recovery planning
- RPO/RTO-driven decision making

## Example Architecture

```
Applications
     |
     v
SCAN / Database Services
     |
+----+----------------+
|                     |
RAC Node 1         RAC Node 2
|                     |
+-------- ASM --------+
          |
       Primary
          |
    Redo Transport
          |
          v
 Physical Standby
   (Data Guard)
```

This is a conceptual lab architecture. The repository does not claim that a live RAC/Data Guard environment is hosted here.

## Repository Layout
- `architecture/` — design and environment documentation
- `monitoring/` — operational health checks
- `backup-recovery/` — RMAN strategy and recovery procedures
- `high-availability/` — RAC and Data Guard operations
- `performance/` — performance incident workflows
- `security/` — access/security review
- `patching/` — patch planning and validation
- `incidents/` — production-style troubleshooting scenarios
- `interview/` — Senior DBA discussion points

## Safety
All scripts and runbooks are educational portfolio examples. Validate Oracle version, licensing, privileges, architecture, application dependencies, backup state, and organizational change procedures before production use. Never store real production credentials or confidential data in this repository.
