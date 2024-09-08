#!/bin/bash
set -e

if [ -f /db-backup/backup.sql ]; then
  echo "Restoring database from backup.sql..."
  psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" < /db-backup/backup.sql
else
  echo "No backup.sql file found. Skipping restore."
fi
