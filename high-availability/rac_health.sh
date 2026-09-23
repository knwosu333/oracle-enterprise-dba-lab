#!/bin/bash
# Read-only RAC/Clusterware operational checks.
# Configure the Grid Infrastructure environment before use.

crsctl check cluster -all
crsctl status resource -t

# Replace placeholder with the verified DB_UNIQUE_NAME.
srvctl status database -d <db_unique_name>
srvctl status asm
