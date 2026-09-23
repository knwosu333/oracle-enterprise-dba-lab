# Incident Scenario — Blocking Sessions

## Symptoms
Users report transactions hanging or timing out.

## Investigation
1. Identify blocked sessions and blockers.
2. Determine the SQL and transaction involved.
3. Establish blocker duration and business ownership.
4. Determine whether the blocker is active, idle-in-transaction, or part of expected processing.
5. Assess impact before terminating any session.
6. If emergency termination is approved, follow operational change/incident procedures.
7. Investigate root cause: application transaction scope, missing commits/rollbacks, concurrency design, SQL performance, or workflow behavior.

## Principle
Killing a blocking session can relieve the immediate symptom but does not constitute root-cause remediation.
