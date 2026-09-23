# Oracle Patching Runbook

## Pre-Patch
1. Review the applicable Oracle patch documentation and known issues.
2. Confirm database/Grid Infrastructure versions and Oracle homes.
3. Validate prerequisite checks and OPatch version.
4. Confirm backups/recovery readiness.
5. Review RAC/Data Guard topology and patch sequencing.
6. Confirm maintenance window and application communication.
7. Capture baseline database and application health.
8. Document rollback strategy.

## Execution
Follow the patch-specific Oracle procedure for the exact environment. Do not treat a generic runbook as a substitute for the patch README or support guidance.

## Post-Patch
- Verify Oracle inventory/version
- Validate Clusterware/RAC resources where applicable
- Validate database open mode and services
- Validate Data Guard transport/apply
- Review alert logs
- Run required SQL/datapatch steps
- Confirm invalid objects and component status
- Perform application smoke tests
- Monitor performance against baseline

## Senior DBA Principle
Patching is an availability and recovery exercise as much as a software-maintenance exercise.
